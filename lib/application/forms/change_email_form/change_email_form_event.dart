part of 'change_email_form_bloc.dart';

@freezed
class ChangeEmailFormEvent with _$ChangeEmailFormEvent {
  const factory ChangeEmailFormEvent.started() = _Started;
  const factory ChangeEmailFormEvent.emailChanged(String emailStr) =
      _EmailChanged;
  const factory ChangeEmailFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory ChangeEmailFormEvent.changeEmailBtnPressed() =
      _ChangeEmailBtnPressed;
}
