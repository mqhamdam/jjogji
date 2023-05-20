part of 'auth_form_bloc.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory AuthFormEvent.passwordChanged(String passwordStr) = _PasswordChanged;
  const factory  AuthFormEvent.signUpUserWithEmailAndPasswordPressed() = _SignUpUserWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInUserWithEmailAndPasswordPressed() = _SignInUserWithEmailAndPasswordPressed;
  const factory AuthFormEvent.toggleSubmitButton(bool isSubmitting) = _ToggleSubmitButton;
  const factory AuthFormEvent.errorMessageChanged(
    Option<Either<AuthFailures, Unit>> failureOrSuccess,) = _ErrorMessageChanged;
  const factory AuthFormEvent.updateState(AuthFormState state) = _UpdateState;
}
