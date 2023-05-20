import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/infrastructure/notifications/app_notification_dto.dart';

part 'notification.freezed.dart';

class Payload {
  const Payload({
    required this.type,
    this.user,
    this.post,
    this.comment,
    this.title,
    this.description,
  });

  final NotificationType type;
  final User? user;
  final Post? post;
  final AppComment? comment;
  final String? title;
  final String? description;
}

@freezed
class AppNotificationPrefs with _$AppNotificationPrefs {
  const factory AppNotificationPrefs({
    required bool info,
    required bool like,
    required bool follow,
    required bool comments,
    required bool isEnabled,
  }) = _AppNotificationPrefs;

  factory AppNotificationPrefs.empty() => const AppNotificationPrefs(
        info: true,
        like: true,
        follow: true,
        comments: true,
        isEnabled: true,
      );
}

@freezed
abstract class AppNotification with _$AppNotification {
  const factory AppNotification({
    required UUID recieveruuid,
    // required NotificationType notificationType,
    required bool hasRead,
    UUID? produceruuid,
    required Payload payload,
  }) = _AppNotification;

  factory AppNotification.empty() => AppNotification(
        recieveruuid: UUID.empty(),
        //notificationType: NotificationType.alert,
        hasRead: false,
        payload: AlertPayload(
          title: 'title',
          description: 'description',
        ),
      );
}

@freezed
class CommentPayload extends Payload with _$CommentPayload {
  factory CommentPayload({
    required Post post,
    required AppComment comment,
  }) = _CommentPayload;
  CommentPayload._() : super(type: NotificationType.comment);
}

@freezed
abstract class CommentReplyPayload extends Payload with _$CommentReplyPayload {
  factory CommentReplyPayload({
    required Post post,
    required AppComment appComment,
    required AppComment replyComment,
  }) = _CommentReplyPayload;
  CommentReplyPayload._() : super(type: NotificationType.commentReply);
}

@freezed
abstract class InfoPayload extends Payload with _$InfoPayload {
  factory InfoPayload({
    required String title,
    required String description,
  }) = _InfoPayload;
  InfoPayload._() : super(type: NotificationType.info);
}

@freezed
abstract class LikePayload extends Payload with _$LikePayload {
  factory LikePayload({
    required User user,
    required Post post,
  }) = _LikePayload;
  LikePayload._() : super(type: NotificationType.like);
}

@freezed
abstract class FollowPayload extends Payload with _$FollowPayload {
  factory FollowPayload({
    required User user,
  }) = _FollowPayload;
  FollowPayload._() : super(type: NotificationType.follow);
}

@freezed
abstract class AlertPayload extends Payload with _$AlertPayload {
  factory AlertPayload({
    required String title,
    required String description,
  }) = _AlertPayload;
  AlertPayload._() : super(type: NotificationType.alert);
}
