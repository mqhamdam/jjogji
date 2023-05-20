import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jjogji/domain/core/failures.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/infrastructure/auth/auth_facade.dart';
import 'package:jjogji/infrastructure/user/user_repo.dart';

part 'user_form_event.dart';
part 'user_form_state.dart';
part 'user_form_bloc.freezed.dart';

class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  final UserRepo _userRepo = UserRepo.instance;
  final AuthFacade _authFacade = AuthFacade.instance;
  late final User initialData;
  UserFormBloc() : super(UserFormState.initial()) {
    on<UserFormEvent>(
      (event, emit) async {
        await event.map(
          getInitialData: (e) async {
            final currentUser = await _authFacade.getSignedInUser();
            final res =
                await _userRepo.getUserData(UUID.fromDB(currentUser.uid));
            res.fold(
              (l) => null,
              (user) {
                initialData = user;
                emit(
                  state.copyWith(
                    user: user.toForm(),
                    loadingInitalData: false,
                  ),
                );
              },
            );
          },
          userNameChanged: (e) {
            emit(
              state.copyWith(
                user: state.user.copyWith(userName: UserName(e.userNameStr)),
              ),
            );
          },
          userIDChanged: (e) {
            // emit(
            //   state.copyWith(
            //     user: state.user.copyWith(userID: UserID(e.userIDStr)),
            //   ),
            // );
          },
          avatarImageChanged: (e) {
            emit(
              state.copyWith(
                avatarImage: e.file,
              ),
            );
          },
          backgroundImageChanged: (e) {
            emit(
              state.copyWith(
                backgroundImage: e.file,
              ),
            );
          },
          saveButtonPressed: (e) async {
            add(UserFormEvent.stateChanged(state.copyWith(isSaving: true)));

            await _userRepo.updateUserData(
              state.user,
              avatar: state.avatarImage,
              background: state.backgroundImage,
            );
            if (isClosed) return;
            add(UserFormEvent.stateChanged(state.copyWith(isSaving: false)));
          },
          stateChanged: (e) {
            emit(e.state);
          },
        );
      },
    );
  }
}
