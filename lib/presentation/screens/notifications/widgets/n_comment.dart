import 'package:flutter/material.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:lottie/lottie.dart';

class NComment extends StatelessWidget {
  const NComment(this.appNotification, {super.key});
  final AppNotification appNotification;

  CommentPayload get getPayload => CommentPayload(
        post: appNotification.payload.post!,
        comment: appNotification.payload.comment!,
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        resolveProfilePic(getPayload.comment.user.profilePic),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIText(
                '${getPayload.comment.user.userName.getOrCrash()} says ${getPayload.comment.commentBody.getOrCrash().substring(
                      0,
                      getPayload.comment.commentBody.getOrCrash().length > 20
                          ? 20
                          : getPayload.comment.commentBody.getOrCrash().length,
                    )}',
                style: UITextStyles.mainTitle,
              ),
              UIText(
                "On post: ${getPayload.post.postBody.getOrCrash()}}",
                style: UITextStyles.subtitle,
                maxLines: 4,
              ),
            ],
          ),
        ),
        Material(
          color: Colors.white,
          shape: const CircleBorder(),
          child: Lottie.asset('assets/lottie/comment2.json', height: 40),
        ),
      ],
    );
  }
}
