import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/infrastructure/user/user_repo.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  //final UUID uuid; // = UUID.fromDB("G5A4okaCZmMsoyVrmRz7zxUjpYF2");

  final bool isCurrentUser;

  final Either<UUID, User> eitherUserOrUUID;

  final UserRepo _userRepo = UserRepo.instance;

  UserBloc(this.eitherUserOrUUID, this.isCurrentUser)
      : super(UserState.initial()) {
    on<UserEvent>(
      (event, emit) async {
        await event.map(
          checkUserRelationType: (e) async {
            //final result = await _userRepo.checkUserRelationType();
          },
          started: (e) async {
            await eitherUserOrUUID.fold(
              (l) async {
                add(UserEvent.getData(l));
              },
              (r) async {
                UserRelation relationDflt = UserRelation.dflt();
                if (isCurrentUser == false) {
                  final relation =
                      await _userRepo.checkUserRelationType(r.uuid);
                  if (relation.isRight()) {
                    relationDflt =
                        relation.getOrElse(() => UserRelation.dflt());
                  }
                }
                emit(
                  state.copyWith(
                    user: r,
                    userRelation: relationDflt,
                  ),
                );
              },
            );
          },
          getData: (e) async {
            final either = await _userRepo.getUserData(e.uuid);

            await either.fold(
              (error) {
                emit(
                  state.copyWith(
                    errorOccuried: true,
                    errorMessage: "Server error",
                    isFetching: false,
                  ),
                );
              },
              (user) async {
                UserRelation relationDflt = UserRelation.dflt();

                if (isCurrentUser != true) {
                  final relation =
                      await _userRepo.checkUserRelationType(user.uuid);
                  if (relation.isRight()) {
                    relationDflt =
                        relation.getOrElse(() => UserRelation.dflt());
                  }
                }

                emit(
                  state.copyWith(
                    user: user,
                    userRelation: relationDflt,
                    isFetching: false,
                  ),
                );
              },
            );
          },
          updateData: (e) {},
          subscribeEvent: (e) async {
            await _userRepo.subscribeToUser(state.user.uuid);
            emit(
              state.copyWith(
                subscriptionInProcess: false,
              ),
            );
          },
          unsubscribeEvent: (e) async {},
          addToBestiesEvent: (e) async {
            await _userRepo.addToBesties(state.user.uuid);
          },
          removeFromBestiesEvent: (e) async {},
          blockUser: (e) async {
            //final result = await _userRepo.blockUser(uuid);
          },
          unBlockUser: (e) async {},
          subscribeButtonPressed: (e) async {
            final bool isFollowEvent = !state.userRelation.follow;
            emit(
              state.copyWith(
                subscriptionInProcess: true,
                user: state.user.copyWith(
                  followersCount: isFollowEvent
                      ? state.user.followersCount + 1
                      : state.user.followersCount - 1,
                ),
                userRelation: state.userRelation
                    .copyWith(follow: !state.userRelation.follow),
              ),
            );
            add(const UserEvent.subscribeEvent());
          },
          bestiesButtonPressed: (e) async {
            emit(
              state.copyWith(
                bestiesActionInProcess: true,
                userRelation: state.userRelation
                    .copyWith(bestie: !state.userRelation.bestie),
              ),
            );
            add(const UserEvent.addToBestiesEvent());
          },
          blockButtonPressedEvent: (e) async {
            emit(
              state.copyWith(
                blockingInProcess: true,
                userRelation: state.userRelation
                    .copyWith(block: !state.userRelation.block),
              ),
            );
            add(const UserEvent.blockUser());
          },
        );
      },
    );
  }
}
