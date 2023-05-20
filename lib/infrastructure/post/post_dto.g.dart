// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$$_PostDtoFromJson(Map<String, dynamic> json) => _$_PostDto(
      uuid: json['_id'] as String,
      authoruuid: json['authoruuid'] as String,
      postBody: json['postBody'] as String,
      postVisibilityType:
          $enumDecode(_$PostVisibilityTypeEnumMap, json['postVisibilityType']),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      commentEnabled: json['commentEnabled'] as bool,
      likeCount: json['likeCount'] as int,
      authorData: UserDto.fromJson(json['authorData'] as Map<String, dynamic>),
      commentCount: json['commentCount'] as int,
    );

Map<String, dynamic> _$$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      '_id': instance.uuid,
      'authoruuid': instance.authoruuid,
      'postBody': instance.postBody,
      'postVisibilityType':
          _$PostVisibilityTypeEnumMap[instance.postVisibilityType]!,
      'tags': instance.tags,
      'commentEnabled': instance.commentEnabled,
      'likeCount': instance.likeCount,
      'authorData': instance.authorData,
      'commentCount': instance.commentCount,
    };

const _$PostVisibilityTypeEnumMap = {
  PostVisibilityType.public: 'public',
  PostVisibilityType.private: 'private',
  PostVisibilityType.besties: 'besties',
};

_$_PostRelationDto _$$_PostRelationDtoFromJson(Map<String, dynamic> json) =>
    _$_PostRelationDto(
      like: json['like'] as bool,
      save: json['save'] as bool,
    );

Map<String, dynamic> _$$_PostRelationDtoToJson(_$_PostRelationDto instance) =>
    <String, dynamic>{
      'like': instance.like,
      'save': instance.save,
    };

_$_PostFilterDto _$$_PostFilterDtoFromJson(Map<String, dynamic> json) =>
    _$_PostFilterDto(
      authoruuid: json['authoruuid'] as String?,
      onlySaved: json['onlySaved'] as bool?,
      onlyLiked: json['onlyLiked'] as bool?,
      onlyMine: json['onlyMine'] as bool?,
      onlyFollowing: json['onlyFollowing'] as bool?,
      onlySpecial: json['onlySpecial'] as bool?,
      onlyPrivate: json['onlyPrivate'] as bool?,
      atLeastLikeCount: json['atLeastLikeCount'] as int?,
      atLeastCommentCount: json['atLeastCommentCount'] as int?,
      newFirst: json['newFirst'] as bool?,
    );

Map<String, dynamic> _$$_PostFilterDtoToJson(_$_PostFilterDto instance) =>
    <String, dynamic>{
      'authoruuid': instance.authoruuid,
      'onlySaved': instance.onlySaved,
      'onlyLiked': instance.onlyLiked,
      'onlyMine': instance.onlyMine,
      'onlyFollowing': instance.onlyFollowing,
      'onlySpecial': instance.onlySpecial,
      'onlyPrivate': instance.onlyPrivate,
      'atLeastLikeCount': instance.atLeastLikeCount,
      'atLeastCommentCount': instance.atLeastCommentCount,
      'newFirst': instance.newFirst,
    };

_$_PostFormDto _$$_PostFormDtoFromJson(Map<String, dynamic> json) =>
    _$_PostFormDto(
      postBody: json['postBody'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      postVisibilityType:
          $enumDecode(_$PostVisibilityTypeEnumMap, json['postVisibilityType']),
      commentEnabled: json['commentEnabled'] as bool,
    );

Map<String, dynamic> _$$_PostFormDtoToJson(_$_PostFormDto instance) =>
    <String, dynamic>{
      'postBody': instance.postBody,
      'tags': instance.tags,
      'postVisibilityType':
          _$PostVisibilityTypeEnumMap[instance.postVisibilityType]!,
      'commentEnabled': instance.commentEnabled,
    };

_$_TrendingTagDto _$$_TrendingTagDtoFromJson(Map<String, dynamic> json) =>
    _$_TrendingTagDto(
      tag: json['tag'] as String,
      postCount: json['postCount'] as int,
      likeCount: json['likeCount'] as int,
    );

Map<String, dynamic> _$$_TrendingTagDtoToJson(_$_TrendingTagDto instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'postCount': instance.postCount,
      'likeCount': instance.likeCount,
    };
