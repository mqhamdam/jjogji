import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/comment/value_objects.dart';
import 'package:jjogji/domain/core/entity.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';

part 'comment.freezed.dart';

@freezed
class AppComment with _$AppComment implements IEntity {
  const factory AppComment({
    required User user,
    required UUID uuid,
    required UUID postuuid,
    required Post post,
    int? replyCount,
    User? replyToUser,
    UUID? replyToCommentuuid, // if null
    required CommentBody commentBody,
  }) = _AppComment;

  factory AppComment.emty() => AppComment(
        user: User.empty(),
        uuid: UUID.empty(),
        post: Post.empty(),
        postuuid: UUID.empty(),
        commentBody: CommentBody(''),
      );
}

@freezed
class AppCommentForm with _$AppCommentForm {
  const factory AppCommentForm({
    UUID? replyToCommentuuid, // if null
    required CommentBody commentBody,
  }) = _AppCommentForm;

  factory AppCommentForm.emty() => AppCommentForm(
        commentBody: CommentBody(''),
      );
}
