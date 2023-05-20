part of 'userid_form_bloc.dart';

@freezed
class UseridFormState with _$UseridFormState {
  factory UseridFormState({
    required UserID userID,
    required bool isSuccess,
    required bool isFetching,
  }) = _UseridFormState;
  factory UseridFormState.initial() => UseridFormState(
        userID: UserID(''),
        isSuccess: false,
        isFetching: false,
      );
}
