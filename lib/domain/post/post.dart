import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/abstract_class.dart';
import 'package:jjogji/domain/core/entity.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/value_objects.dart';
import 'package:jjogji/domain/user/user.dart';

part 'post.freezed.dart';

@JsonEnum()
enum PostVisibilityType { public, private, besties }

@freezed
class Post with _$Post implements IEntity {
  const factory Post({
    required UUID uuid,
    required UUID authoruuid,
    required PostBody postBody,
    required User authorData,
    required List<Tag> tags,
    required PostVisibilityType postVisibilityType,
    required bool commentEnabled,
    required int likeCount,
    required int commentCount,
  }) = _Post;

  factory Post.empty() => Post(
        uuid: UUID.empty(),
        authoruuid: UUID.empty(),
        postBody: PostBody(""),
        authorData: User.empty(),
        tags: <Tag>[],
        postVisibilityType: PostVisibilityType.public,
        commentEnabled: true,
        likeCount: 0,
        commentCount: 0,
      );
}

@freezed
class PostRelation with _$PostRelation {
  const factory PostRelation({
    required bool like,
    required bool save,
  }) = _PostRelation;

  factory PostRelation.dflt() => const PostRelation(
        like: false,
        save: false,
      );
}

@freezed
class PostFilter extends AppFilter with _$PostFilter {
  const factory PostFilter({
    UUID? authoruuid,
    bool? onlySaved,
    bool? onlyLiked,
    bool? onlyMine,
    bool? onlyFollowing,
    bool? onlySpecial,
    bool? onlyPrivate,
    int? atLeastLikeCount,
    int? atLeastCommentCount,
    bool? newFirst,
  }) = _PostFilter;

  factory PostFilter.dflt() => const PostFilter();
}

@freezed
class PostForm with _$PostForm {
  const factory PostForm({
    required PostBody postBody,
    required PostVisibilityType postVisibilityType,
    required List<Tag> tags,
    required bool commentEnabled,
  }) = _PostForm;

  factory PostForm.dflt() => PostForm(
        postBody: PostBody(""),
        postVisibilityType: PostVisibilityType.public,
        tags: <Tag>[],
        commentEnabled: true,
      );
}

@freezed
class TrendingTag with _$TrendingTag {
  const factory TrendingTag({
    required Tag tag,
    required int postCount,
    required int likeCount,
  }) = _TrendingTags;

  factory TrendingTag.dflt() => TrendingTag(
        tag: Tag(""),
        postCount: 0,
        likeCount: 0,
      );
}

@freezed
class CPostFilter with _$CPostFilter {
  const factory CPostFilter({
    PostBody? postBody,
    List<Tag>? tags,
    bool? commentEnabled,
    int? likeCount,
    int? commentCount,
  }) = _CPostFilter;

  factory CPostFilter.dflt() => const CPostFilter();

}
