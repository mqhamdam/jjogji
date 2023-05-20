import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/infrastructure/comments/app_comment_dto.dart';
import 'package:jjogji/infrastructure/post/post_dto.dart';
import 'package:jjogji/infrastructure/user/user_dto.dart';

part 'app_notification_dto.freezed.dart';
part 'app_notification_dto.g.dart';

enum NotificationType {
  info,
  like,
  follow,
  alert,
  comment,
  commentReply,
  error,
  success,
  progress,
}

@freezed
class AppNotificationPrefsDto with _$AppNotificationPrefsDto {
  const factory AppNotificationPrefsDto({
    required bool info,
    required bool like,
    required bool follow,
    required bool comments,
    required bool isEnabled,
  }) = _AppNotificationPrefsDto;

  factory AppNotificationPrefsDto.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationPrefsDtoFromJson(json);

  factory AppNotificationPrefsDto.fromDomain(AppNotificationPrefs prefs) =>
      AppNotificationPrefsDto(
        info: prefs.info,
        like: prefs.like,
        follow: prefs.follow,
        comments: prefs.comments,
        isEnabled: prefs.isEnabled,
      );
}

extension AppNotificationPrefsDtoX on AppNotificationPrefsDto {
  AppNotificationPrefs toDomain() {
    return AppNotificationPrefs(
      info: info,
      like: like,
      follow: follow,
      comments: comments,
      isEnabled: isEnabled,
    );
  }
}

@freezed
class AppNotificationDto with _$AppNotificationDto {
  const factory AppNotificationDto({
    required bool hasRead,
    required PayloadDto payload,
  }) = _AppNotificationDto;

  factory AppNotificationDto.fromDomain(AppNotification appNotification) {
    return AppNotificationDto(
      hasRead: appNotification.hasRead,
      payload: PayloadDto.fromDomain(appNotification.payload),
    );
  }

  /// to json
  factory AppNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationDtoFromJson(json);
}

extension AppNotificationDtoX on AppNotificationDto {
  AppNotification toDomain() {
    return AppNotification(
      recieveruuid: UUID.empty(),
      hasRead: hasRead,
      payload: payload.toDomain(),
    );
  }
}

@freezed
abstract class PayloadDto with _$PayloadDto {
  const factory PayloadDto({
    required NotificationType type,
    required UserDto? user,
    required PostDto? post,
    required AppCommentDto? comment,
    required String? title,
    required String? description,
  }) = _PayloadDto;

  factory PayloadDto.fromDomain(Payload payload) {
    return PayloadDto(
      title: payload.title,
      description: payload.description,
      type: payload.type,
      user: payload.user != null ? UserDto.fromDomain(payload.user!) : null,
      post: payload.post != null ? PostDto.fromDomain(payload.post!) : null,
      comment: payload.comment != null
          ? AppCommentDto.fromDomain(payload.comment!)
          : null,
    );
  }

  factory PayloadDto.fromJson(Map<String, dynamic> json) => _fromJson(json);

  
  // ignore: prefer_constructors_over_static_methods
  static PayloadDto _fromJson(Map<String, dynamic> json) {
    final isUserEmpty =
        !(json['user'] as Map<String, dynamic>).containsKey("_id");
    final isPostEmpty =
        !(json['post'] as Map<String, dynamic>).containsKey("_id");
    final isCommentEmpty =
        !(json['comment'] as Map<String, dynamic>).containsKey('_id');
    if (isUserEmpty == false) {
    }
    if (isPostEmpty == false) {
    }
    return PayloadDto(
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      user: isUserEmpty
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
      post: isPostEmpty
          ? null
          : PostDto.fromJson(json['post'] as Map<String, dynamic>),
      comment: isCommentEmpty
          ? null
          : AppCommentDto.fromJson(json['comment'] as Map<String, dynamic>),
    );
  }
}

extension PayloadDtoX on PayloadDto {
  Payload toDomain() {
    return Payload(
      type: type,
      title: title,
      description: description,
      user: user?.toDomain(),
      post: post?.toDomain(),
      comment: comment?.toDomain(),
    );
  }
}
