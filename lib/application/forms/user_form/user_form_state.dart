part of 'user_form_bloc.dart';

@freezed
class UserFormState with _$UserFormState {
  const factory UserFormState({
    required UserForm user,
    required bool isSaving,
    required bool loadingInitalData,
    required bool showErrorMessages,
    required Option<Either<ValueFailure, Unit>> saveFailureOrSuccessOption,
    XFile? avatarImage,
    XFile? backgroundImage,
  }) = _UserFormState;

  factory UserFormState.initial() => UserFormState(
        user: UserForm.dflt(),
        isSaving: false,
        loadingInitalData: true,
        showErrorMessages: false,
        saveFailureOrSuccessOption: none(),
      );
}
