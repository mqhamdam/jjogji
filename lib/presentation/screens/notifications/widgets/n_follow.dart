import 'package:flutter/material.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:lottie/lottie.dart';

class NFollow extends StatelessWidget {
  const NFollow(this.appNotification, {super.key});
  final AppNotification appNotification;

  FollowPayload get getPayload =>
      FollowPayload(user: appNotification.payload.user!);

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
                  '${getPayload.user.userName.getOrCrash()} subscribed you!',
                  style: UITextStyles.mainTitle,),
              const UIText(
                "User started following you, now he can see your private posts",
                style: UITextStyles.subtitle,
                maxLines: 5,
              ),
            ],
          ),
        ),
        Material(
          shape: const CircleBorder(),
          color: Colors.white,
          child: Lottie.asset(
            'assets/lottie/user.json',
            height: 40,
          ),
        ),
      ],
    );
  }
}
