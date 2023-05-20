// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppNotificationPrefsDto _$$_AppNotificationPrefsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AppNotificationPrefsDto(
      info: json['info'] as bool,
      like: json['like'] as bool,
      follow: json['follow'] as bool,
      comments: json['comments'] as bool,
      isEnabled: json['isEnabled'] as bool,
    );

Map<String, dynamic> _$$_AppNotificationPrefsDtoToJson(
        _$_AppNotificationPrefsDto instance) =>
    <String, dynamic>{
      'info': instance.info,
      'like': instance.like,
      'follow': instance.follow,
      'comments': instance.comments,
      'isEnabled': instance.isEnabled,
    };

_$_AppNotificationDto _$$_AppNotificationDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AppNotificationDto(
      hasRead: json['hasRead'] as bool,
      payload: PayloadDto.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppNotificationDtoToJson(
        _$_AppNotificationDto instance) =>
    <String, dynamic>{
      'hasRead': instance.hasRead,
      'payload': instance.payload,
    };

_$_PayloadDto _$$_PayloadDtoFromJson(Map<String, dynamic> json) =>
    _$_PayloadDto(
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : PostDto.fromJson(json['post'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : AppCommentDto.fromJson(json['comment'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_PayloadDtoToJson(_$_PayloadDto instance) =>
    <String, dynamic>{
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'user': instance.user,
      'post': instance.post,
      'comment': instance.comment,
      'title': instance.title,
      'description': instance.description,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.info: 'info',
  NotificationType.like: 'like',
  NotificationType.follow: 'follow',
  NotificationType.alert: 'alert',
  NotificationType.comment: 'comment',
  NotificationType.commentReply: 'commentReply',
  NotificationType.error: 'error',
  NotificationType.success: 'success',
  NotificationType.progress: 'progress',
};
