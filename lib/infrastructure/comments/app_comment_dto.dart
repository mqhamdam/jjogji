import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/domain/comment/value_objects.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/infrastructure/post/post_dto.dart';
import 'package:jjogji/infrastructure/user/user_dto.dart';

part 'app_comment_dto.freezed.dart';
part 'app_comment_dto.g.dart';

@freezed
class AppCommentDto with _$AppCommentDto {
  factory AppCommentDto({
    @JsonKey(name: '_id') required String uuid,
    required UserDto user,
    required PostDto post,
    required String postuuid,
    required String commentBody,
    int? replyCount,
    //AppCommentDto? replyToComment,
    // UserDto? replyToUser,
    String? replyTouuid,
  }) = _AppCommentDto;

  factory AppCommentDto.fromJson(Map<String, dynamic> json) =>
      _$AppCommentDtoFromJson(json);

  factory AppCommentDto.fromDomain(AppComment appComment) => AppCommentDto(
        uuid: appComment.uuid.getOrCrash(),
        post: PostDto.fromDomain(appComment.post),
        // replyToUser: appComment.replyToUser != null
        //     ? UserDto.fromDomain(appComment.replyToUser!)
        //     : null,
        replyTouuid: appComment.replyToUser != null
            ? appComment.replyToUser!.uuid.getOrCrash()
            : null,
        replyCount: appComment.replyCount,
        user: UserDto.fromDomain(appComment.user),
        postuuid: appComment.postuuid.getOrCrash(),
        commentBody: appComment.commentBody.getOrCrash(),
      );
}

extension AppCommentDtoX on AppCommentDto {
  AppComment toDomain() => AppComment(
        user: user.toDomain(),
        post: post.toDomain(),replyToCommentuuid:
            replyTouuid != null ? UUID.fromDB(replyTouuid!) : null,
        uuid: UUID.fromDB(uuid),
        replyCount: replyCount,
        postuuid: UUID.fromDB(postuuid),
        commentBody: CommentBody(commentBody),
      );
}

@freezed
class AppCommentFormDto with _$AppCommentFormDto {
  factory AppCommentFormDto({
    required String commentBody,
    String? replyTouuid,
  }) = _AppCommentFormDto;

  factory AppCommentFormDto.fromJson(Map<String, dynamic> json) =>
      _$AppCommentFormDtoFromJson(json);

  factory AppCommentFormDto.fromDomain(AppCommentForm appCommentForm) =>
      AppCommentFormDto(
        commentBody: appCommentForm.commentBody.getOrCrash(),
        replyTouuid: appCommentForm.replyToCommentuuid?.getOrCrash(),
      );
}

extension AppCommentFormDtoX on AppCommentFormDto {
  AppCommentForm toDomain() => AppCommentForm(
        commentBody: CommentBody(commentBody),
        replyToCommentuuid:
            replyTouuid != null ? UUID.fromDB(replyTouuid!) : null,
      );
}
