import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/post/value_objects.dart';
import 'package:jjogji/infrastructure/user/user_dto.dart';

part 'post_dto.freezed.dart';
part 'post_dto.g.dart';

@freezed
class PostDto with _$PostDto {
  factory PostDto({
    @JsonKey(name: "_id") required String uuid,
    required String authoruuid,
    required String postBody,
    required PostVisibilityType postVisibilityType,
    required List<String> tags,
    required bool commentEnabled,
    required int likeCount,
    required UserDto authorData,
    required int commentCount,
  }) = _PostDto;

  factory PostDto.fromDomain(Post post) => PostDto(
        uuid: post.uuid.getOrCrash(),
        authoruuid: post.authoruuid.getOrCrash(),
        postBody: post.postBody.getOrCrash(),
        authorData: UserDto.fromDomain(post.authorData),
        tags: post.tags.map((e) => e.getOrCrash()).toList(),
        postVisibilityType: post.postVisibilityType,
        likeCount: post.likeCount,
        commentCount: post.commentCount,
        commentEnabled: post.commentEnabled,
      );

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}

extension PostDtoX on PostDto {
  Post toDomain() => Post(
        uuid: UUID.fromDB(uuid),
        authorData: authorData.toDomain(),
        authoruuid: UUID.fromDB(authoruuid),
        postBody: PostBody(postBody),
        tags: List<Tag>.from(tags.map((e) => Tag(e))),
        postVisibilityType: postVisibilityType,
        commentEnabled: commentEnabled,
        likeCount: likeCount,
        commentCount: commentCount,
      );
}

@freezed
class PostRelationDto with _$PostRelationDto {
  factory PostRelationDto({
    required bool like,
    required bool save,
  }) = _PostRelationDto;
  factory PostRelationDto.fromDomain(PostRelation postRelation) =>
      PostRelationDto(
        like: postRelation.like,
        save: postRelation.save,
      );
  factory PostRelationDto.fromJson(Map<String, dynamic> json) =>
      _$PostRelationDtoFromJson(json);
}

extension PostRelationDtoX on PostRelationDto {
  PostRelation toDomain() => PostRelation(
        like: like,
        save: save,
      );
}

@freezed
class PostFilterDto with _$PostFilterDto {
  factory PostFilterDto({
    required String? authoruuid,
    required bool? onlySaved,
    required bool? onlyLiked,
    required bool? onlyMine,
    required bool? onlyFollowing,
    required bool? onlySpecial,
    required bool? onlyPrivate,
    required int? atLeastLikeCount,
    required int? atLeastCommentCount,
    required bool? newFirst,
  }) = _PostFilterDto;

  factory PostFilterDto.fromDomain(PostFilter postFilter) => PostFilterDto(
        authoruuid: postFilter.authoruuid?.getOrCrash(),
        onlySaved: postFilter.onlySaved,
        onlyLiked: postFilter.onlyLiked,
        onlyMine: postFilter.onlyMine,
        onlyFollowing: postFilter.onlyFollowing,
        onlySpecial: postFilter.onlySpecial,
        onlyPrivate: postFilter.onlyPrivate,
        atLeastLikeCount: postFilter.atLeastLikeCount,
        atLeastCommentCount: postFilter.atLeastCommentCount,
        newFirst: postFilter.newFirst,
      );
  factory PostFilterDto.fromJson(Map<String, dynamic> json) =>
      _$PostFilterDtoFromJson(json);
}

extension PostFilterDtoX on PostFilterDto {
  PostFilter toDomain() => PostFilter(
        authoruuid: authoruuid != null ? UUID.fromDB(authoruuid!) : null,
        onlySaved: onlySaved,
        onlyLiked: onlyLiked,
        onlyMine: onlyMine,
        onlyFollowing: onlyFollowing,
        onlySpecial: onlySpecial,
        onlyPrivate: onlyPrivate,
        atLeastLikeCount: atLeastLikeCount,
        atLeastCommentCount: atLeastCommentCount,
        newFirst: newFirst,
      );

  String toQueryString() {
    final Map<String, dynamic> queryParameters = <String, dynamic>{};
    if (authoruuid != null) {
      queryParameters['authoruuid'] = authoruuid;
    }
    if (onlySaved != null) {
      queryParameters['onlySaved'] = onlySaved;
    }
    if (onlyLiked != null) {
      queryParameters['onlyLiked'] = onlyLiked;
    }
    if (onlyMine != null) {
      queryParameters['onlyMine'] = onlyMine;
    }
    if (onlyFollowing != null) {
      queryParameters['onlyFollowing'] = onlyFollowing;
    }
    if (onlySpecial != null) {
      queryParameters['onlySpecial'] = onlySpecial;
    }
    if (onlyPrivate != null) {
      queryParameters['onlyPrivate'] = onlyPrivate;
    }
    if (atLeastLikeCount != null) {
      queryParameters['atLeastLikeCount'] = atLeastLikeCount;
    }
    if (atLeastCommentCount != null) {
      queryParameters['atLeastCommentCount'] = atLeastCommentCount;
    }
    if (newFirst != null) {
      queryParameters['newFirst'] = newFirst;
    }
    return Uri(queryParameters: queryParameters).query;
  }
}

@freezed
class PostFormDto with _$PostFormDto {
  const factory PostFormDto({
    required String postBody,
    required List<String> tags,
    required PostVisibilityType postVisibilityType,
    required bool commentEnabled,
  }) = _PostFormDto;

  factory PostFormDto.fromDomain(PostForm postForm) => PostFormDto(
        tags: postForm.tags.map((e) => e.getOrCrash()).toList(),
        postBody: postForm.postBody.getOrCrash(),
        postVisibilityType: postForm.postVisibilityType,
        commentEnabled: postForm.commentEnabled,
      );
  factory PostFormDto.fromJson(Map<String, dynamic> json) =>
      _$PostFormDtoFromJson(json);
}

extension PostFormDtoX on PostFormDto {
  PostForm toDomain() => PostForm(
        tags: List<Tag>.from(tags.map((e) => Tag(e))),
        postBody: PostBody(postBody),
        postVisibilityType: postVisibilityType,
        commentEnabled: commentEnabled,
      );
}

@freezed
class TrendingTagDto with _$TrendingTagDto {
  const factory TrendingTagDto({
    required String tag,
    required int postCount,
    required int likeCount,
  }) = _TrendingTagDto;

  //To Domain
  factory TrendingTagDto.fromDomain(TrendingTag trendingTag) => TrendingTagDto(
        tag: trendingTag.tag.getOrCrash(),
        postCount: trendingTag.postCount,
        likeCount: trendingTag.likeCount,
      );

  factory TrendingTagDto.fromJson(Map<String, dynamic> json) =>
      _$TrendingTagDtoFromJson(json);
}

extension TrendingTagX on TrendingTagDto {
  TrendingTag toDomain() => TrendingTag(
        tag: Tag(tag),
        postCount: postCount,
        likeCount: likeCount,
      );
}

@freezed
class CPostFilterDto with _$CPostFilterDto {
  const factory CPostFilterDto({
    String? postBody,
    List<String>? tags,
    int? likeCount,
    int? commentCount,
    bool? commentEnabled,
  }) = _CPostFilterDto;

  factory CPostFilterDto.fromDomain(CPostFilter cPostFilter) => CPostFilterDto(
        postBody: cPostFilter.postBody?.getOrCrash(),
        tags: cPostFilter.tags?.map((e) => e.getOrCrash()).toList(),
        likeCount: cPostFilter.likeCount,
        commentCount: cPostFilter.commentCount,
        commentEnabled: cPostFilter.commentEnabled,
      );
}

extension CPostFilterDtoX on CPostFilterDto {
  String toQueryString() {
    final List<String> qs = [];
    if (postBody != null) {
      qs.add('postBody=$postBody');
    }
    if (tags != null) {
      qs.add('tags=${tags!.join(',')}');
    }
    if (likeCount != null) {
      qs.add('likeCount=$likeCount');
    }
    if (commentCount != null) {
      qs.add('commentCount=$commentCount');
    }
    if (commentEnabled != null) {
      qs.add('commentEnabled=$commentEnabled');
    }
    return qs.join('&');
  }
}
