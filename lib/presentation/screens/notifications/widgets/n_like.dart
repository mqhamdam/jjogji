import 'package:flutter/material.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:lottie/lottie.dart';

class NLike extends StatelessWidget {
  const NLike(this.appNotification, {super.key});
  final AppNotification appNotification;

  LikePayload get getPayload => LikePayload(
        user: appNotification.payload.user!,
        post: appNotification.payload.post!,
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        resolveProfilePic(getPayload.user.profilePic),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIText(
                '${getPayload.user.userName.getOrCrash()} liked your post',
                style: UITextStyles.mainTitle,
              ),
              UIText(
                getPayload.post.postBody.getOrCrash(),
                style: UITextStyles.subtitle,
                maxLines: 3,
              ),
            ],
          ),
        ),
        Lottie.asset('assets/lottie/heart2.json', height: 50),
      ],
    );
  }
}
