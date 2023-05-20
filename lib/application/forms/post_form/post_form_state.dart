part of 'post_form_bloc.dart';

@freezed
class PostFormState with _$PostFormState {
  const factory PostFormState({
    required PostForm postForm,
    required bool isSaving,
    required bool showErrorMessages,
    required Option<Either<PostFailures, Unit>> saveFailureOrSuccessOption,
  }) = _PostFormState;

  factory PostFormState.dflt() => PostFormState(
        postForm: PostForm.dflt(),
        isSaving: false,
        showErrorMessages: false,
        saveFailureOrSuccessOption: none(),
      );
}
