part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required User user,
    required UserRelation userRelation,
    required bool isFetching,
    required bool subscriptionInProcess,
    required bool blockingInProcess,
    required bool bestiesActionInProcess,
    required bool errorOccuried,
    required String errorMessage,
  }) = _User;

  factory UserState.initial() => UserState(
        user: User.empty(),
        isFetching: true,
        subscriptionInProcess: false,
        blockingInProcess: false,
        bestiesActionInProcess: false,
        errorOccuried: false,
        errorMessage: "",
        userRelation: UserRelation.dflt(),
      );
}
