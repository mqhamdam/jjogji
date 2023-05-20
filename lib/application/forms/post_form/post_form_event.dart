part of 'post_form_bloc.dart';

@freezed
class PostFormEvent with _$PostFormEvent {
  const factory PostFormEvent.stateChanged(PostFormState postFormState) =
      _StateChanged;
  const factory PostFormEvent.postBodyChanged(String str) = _PostBodyChanged;
  const factory PostFormEvent.postVisibilityTypeChanged(int i) =
      _PostVisibilityTypeChanged;
  const factory PostFormEvent.tagsChanged(List<Tag> tags) = _TagsChanged;
  const factory PostFormEvent.commentEnableButtonSwitched(bool value) = _CommentEnableButtonSwitched;
  const factory PostFormEvent.postButtonPressed() = _PostButtonPressed;
}
