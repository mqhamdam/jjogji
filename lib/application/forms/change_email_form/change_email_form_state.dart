part of 'change_email_form_bloc.dart';

@freezed
class ChangeEmailFormState with _$ChangeEmailFormState {
  const factory ChangeEmailFormState({
    required EmailAddress emailAddress,
    required PasswordVO passwordVO,
    required bool isSubmitting,
    required bool popPage,
    required bool showErrorMessages,
    required Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption,
  }) = _ChangeEmailFormBloc;
  factory ChangeEmailFormState.initial() => ChangeEmailFormState(
        emailAddress: EmailAddress(''),
        passwordVO: PasswordVO(''),
        isSubmitting: false,
        popPage: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
