part of 'auth_form_bloc.dart';

@freezed
class AuthFormState with _$AuthFormState {

  const factory AuthFormState({
    required EmailAddress emailAddress,
    required PasswordVO passwordVO,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory AuthFormState.empty() => AuthFormState(
    emailAddress: EmailAddress(''),
    passwordVO: PasswordVO(''),
    isSubmitting: false,
    showErrorMessages: false,
    authFailureOrSuccessOption: none(),
  );
}
