import 'package:flutter/material.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:lottie/lottie.dart';

class NAlert extends StatelessWidget {
  const NAlert(this.appNotification, {super.key});
  final AppNotification appNotification;

  AlertPayload get getPayload => appNotification.payload as AlertPayload;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //
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
        Lottie.asset('assets/lottie/warning.json', height: 40),
      ],
    );
  }
}
