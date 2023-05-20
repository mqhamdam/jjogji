part of 'comments_form_bloc.dart';

@freezed
class CommentsFormEvent with _$CommentsFormEvent {
  const factory CommentsFormEvent.started() = _Started;
  const factory CommentsFormEvent.commentBodyChanged(String str) = _CommentBodyChanged;
}
