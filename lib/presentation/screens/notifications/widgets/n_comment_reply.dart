import 'package:flutter/material.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:lottie/lottie.dart';

class NCommenReply extends StatelessWidget {
  const NCommenReply(this.appNotification, {super.key});
  final AppNotification appNotification;

  CommentReplyPayload get getPayload => CommentReplyPayload(
        post: appNotification.payload.comment!.post,
        appComment: appNotification.payload.comment!,
        replyComment: appNotification.payload.comment!,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColorScheme.cardColor,
      ),
      child: Row(
        children: [
          resolveProfilePic(getPayload.appComment.user.profilePic),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIText('User comments...!', style: UITextStyles.mainTitle),
                UIText(
                  "User started following you, now he can see your private posts",
                  style: UITextStyles.subtitle,
                  maxLines: 5,
                ),
              ],
            ),
          ),
          Material(
            color: Colors.white,
            shape: const CircleBorder(),
            child: Lottie.asset('assets/lottie/comment1.json', height: 40),
          ),
        ],
      ),
    );
  }
}
