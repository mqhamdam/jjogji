// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppCommentDto _$$_AppCommentDtoFromJson(Map<String, dynamic> json) =>
    _$_AppCommentDto(
      uuid: json['_id'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      post: PostDto.fromJson(json['post'] as Map<String, dynamic>),
      postuuid: json['postuuid'] as String,
      commentBody: json['commentBody'] as String,
      replyCount: json['replyCount'] as int?,
      replyTouuid: json['replyTouuid'] as String?,
    );

Map<String, dynamic> _$$_AppCommentDtoToJson(_$_AppCommentDto instance) =>
    <String, dynamic>{
      '_id': instance.uuid,
      'user': instance.user,
      'post': instance.post,
      'postuuid': instance.postuuid,
      'commentBody': instance.commentBody,
      'replyCount': instance.replyCount,
      'replyTouuid': instance.replyTouuid,
    };

_$_AppCommentFormDto _$$_AppCommentFormDtoFromJson(Map<String, dynamic> json) =>
    _$_AppCommentFormDto(
      commentBody: json['commentBody'] as String,
      replyTouuid: json['replyTouuid'] as String?,
    );

Map<String, dynamic> _$$_AppCommentFormDtoToJson(
        _$_AppCommentFormDto instance) =>
    <String, dynamic>{
      'commentBody': instance.commentBody,
      'replyTouuid': instance.replyTouuid,
    };
