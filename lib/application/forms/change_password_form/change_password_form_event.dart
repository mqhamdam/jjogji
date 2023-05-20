part of 'change_password_form_bloc.dart';

@freezed
class ChangePasswordFormEvent with _$ChangePasswordFormEvent {
  const factory ChangePasswordFormEvent.started() = _Started;
  const factory ChangePasswordFormEvent.oldPasswordChanged(String oldPasswordStr) = _OldPasswordChanged;
  const factory ChangePasswordFormEvent.newPasswordChanged(String newPasswordStr) = _NewPasswordChanged;
  const factory ChangePasswordFormEvent.confirmPasswordChanged(String confirmPasswordStr) = _ConfirmPasswordChanged;
  const factory ChangePasswordFormEvent.changePasswordBtnPressed() = _ChangePasswordBtnPressed;
}
