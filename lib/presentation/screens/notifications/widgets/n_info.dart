import 'package:flutter/material.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:lottie/lottie.dart';

class NInfo extends StatelessWidget {
  const NInfo(this.appNotification, {super.key});
  final AppNotification appNotification;

  InfoPayload get getPayload => InfoPayload(
        title: appNotification.payload.title!,
        description: appNotification.payload.description!,
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // UserAvatar(null, Polygons.triangle),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIText(getPayload.title, style: UITextStyles.mainTitle),
              UIText(
                getPayload.description,
                style: UITextStyles.subtitle,
                maxLines: 5,
              ),
            ],
          ),
        ),
        Lottie.asset('assets/lottie/information_session.json', height: 50),
      ],
    );
  }
}
