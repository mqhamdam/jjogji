part of 'comments_form_bloc.dart';

@freezed
class CommentsFormState with _$CommentsFormState {
  const factory CommentsFormState({
    required CommentBody commentBody,
  }) = _AppCommentForm;
  factory CommentsFormState.dflt() => CommentsFormState(
        commentBody: CommentBody(''),
      );
}
