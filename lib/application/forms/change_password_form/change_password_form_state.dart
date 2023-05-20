part of 'change_password_form_bloc.dart';

@freezed
class ChangePasswordFormState with _$ChangePasswordFormState {
  const factory ChangePasswordFormState({
    required PasswordVO oldPassword,
    required PasswordVO newPassword,
    required PasswordVO confirmPassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption,
  }) = _ChangePasswordFormState;
  factory ChangePasswordFormState.initial() => ChangePasswordFormState(
        oldPassword: PasswordVO(''),
        newPassword: PasswordVO(''),
        confirmPassword: PasswordVO(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
