import 'dart:async';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/app_notifications/app_notifications_bloc.dart';
import 'package:jjogji/infrastructure/core/api_handler.dart';
import 'package:jjogji/infrastructure/core/local_db_handler.dart';
import 'package:jjogji/infrastructure/notifications/app_notification_dto.dart';
import 'package:jjogji/main.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:lottie/lottie.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';

// There are a few things to keep in mind about your background message handler:

// It must not be an anonymous function.
// It must be a top-level function (e.g. not a class method which requires initialization).

Future<void> handlerBackgroundMessages(RemoteMessage message) async {
  var currentBadgeCount = await LocalDB.instance.getBadgeCount();

  final newBadgeCount = ++currentBadgeCount;
  LocalDB.updateBadgeCount(newBadgeCount);
}

Future<void> _handleForegroundMessages(RemoteMessage message) async {
  print("NOT");
  final title = message.notification!.title;
  final body = message.notification!.body;
  Vibration.vibrate(duration: 250);
  NotificationType? nfType;
  final c = Global.navigatorKey.currentContext!;
  BlocProvider.of<AppNotificationsBloc>(c)
      .add(const AppNotificationsEvent.incrementNotReadCount());

  switch (message.data['type']) {
    case 'alert':
      nfType = NotificationType.alert;
      break;
    case 'follow':
      nfType = NotificationType.follow;
      break;
    case 'like':
      nfType = NotificationType.like;
      break;
    case 'info':
      nfType = NotificationType.info;
      break;
    case 'comment':
      nfType = NotificationType.comment;
      break;
    case 'commentReply':
      nfType = NotificationType.commentReply;
      break;

    default:
  }

  Notify(
    title: title!,
    description: body,
    type: nfType ?? NotificationType.error,
  ).showNotification();
}

class Notify {
  Notify({
    required this.title,
    required this.type,
    this.description,
    this.leading,
  });

  final String title;
  final String? description;
  final Widget? leading;
  final NotificationType type;

  Widget _notificationBody({
    required Color color,
    required Widget trailing,
  }) =>
      Container(
        decoration: BoxDecoration(
          color: color, // AppColorScheme.backgroundColor,
          borderRadius: BorderRadius.circular(33),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(227, 0, 0, 0),
              borderRadius: BorderRadius.circular(33),
            ),
            padding: const EdgeInsets.only(left: 10, bottom: 5, right: 5),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  //  resolveProfilePic(state.user.profilePic, isLarge: true),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        UIText(
                          title,
                          style: UITextStyles.mainTitle,
                          overflow: TextOverflow.visible,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        //UIText('data', style: UITextStyles.mainTitle),
                        if (description != null)
                          Row(
                            children: [
                              Expanded(
                                child: UIText(
                                  description!,
                                  overflow: TextOverflow.fade,
                                  style: UITextStyles.subtitle,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  trailing
                ],
              ),
            ),
          ),
        ),
      );

  void showProgressBar() {}

  Widget _showContent() {
    switch (type) {
      case NotificationType.alert:
        return _notificationBody(
          color: Colors.amber,
          trailing: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Lottie.asset(
              'assets/lottie/warning.json',
              repeat: false,
              height: 50,
            ),
          ),
        );
      case NotificationType.success:
        return _notificationBody(
          color: Colors.green,
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Lottie.asset(
              'assets/lottie/success.json',
              repeat: false,
              height: 50,
            ),
          ),
        );
      case NotificationType.info:
        return _notificationBody(
          color: Colors.cyan,
          trailing: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Lottie.asset(
              'assets/lottie/information_session.json',
              height: 50,
            ),
          ),
        );
      case NotificationType.error:
        return _notificationBody(
          color: Colors.red[900]!,
          trailing: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Lottie.asset(
              'assets/lottie/error3.json',
              repeat: false,
              height: 50,
            ),
          ),
        );
      case NotificationType.like:
        return _notificationBody(
          color: Colors.pink,
          trailing: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Lottie.asset(
              'assets/lottie/heart2.json',
              repeat: true,
              height: 50,
            ),
          ),
        );
      case NotificationType.comment:
        return _notificationBody(
          color: Colors.teal,
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.white,
              shape: const CircleBorder(),
              child: Lottie.asset(
                'assets/lottie/comment2.json',
                height: 50,
              ),
            ),
          ),
        );
      case NotificationType.commentReply:
        return _notificationBody(
          color: Colors.teal,
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.white,
              shape: const CircleBorder(),
              child: Lottie.asset(
                'assets/lottie/comment1.json',
                height: 50,
              ),
            ),
          ),
        );
      case NotificationType.follow:
        return _notificationBody(
          color: Colors.blue[900]!,
          trailing: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Material(
              color: Colors.white,
              shape: const CircleBorder(),
              child: Lottie.asset(
                'assets/lottie/user.json',
                repeat: false,
                height: 50,
              ),
            ),
          ),
        );
      case NotificationType.progress:
        return _notificationBody(
          color: Colors.blue,
          trailing: Lottie.asset(
            'assets/lottie/loading1.json',
            height: 50,
          ),
        );
      default:
        return Container();
    }
  }

  OverlaySupportEntry showNotification({
    NotificationPosition position = NotificationPosition.top,
  }) {
    return showSimpleNotification(
      _showContent(),
      // duration: Duration(seconds: 5),
      // autoDismiss: true,
      autoDismiss: false,
      slideDismissDirection: DismissDirection.vertical,
      position: position,
      foreground: Colors.transparent,
      background: Colors.transparent,
    );
  }

  static Stream<String> listenTokenChanges() =>
      FirebaseMessaging.instance.onTokenRefresh;

  static void listenBackgroundMessages() =>
      FirebaseMessaging.onBackgroundMessage(handlerBackgroundMessages);

  static StreamSubscription listenRemoteMessages() =>
      FirebaseMessaging.onMessage.listen(_handleForegroundMessages);

  static Future<void> handleToken(String? t) async {
    final String? token = t ?? await FirebaseMessaging.instance.getToken();
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final bool isExist = prefs.containsKey('fcm_token');
    bool update = true;
    if (isExist) {
      final String? oldToken = prefs.getString('fcm_token');
      if (oldToken != token) {
        // update token
        prefs.setString('fcm_token', token!);
      } else {
        update = false;
      }
    } else {
      prefs.setString('fcm_token', token!);
    }

    final bool fcm_id_key = prefs.containsKey('fcm_id');
    if (fcm_id_key != true) {
      // final dInfo = DeviceInfo()
      final dInfo = DeviceInfoPlugin();
      final androidInfo = await dInfo.androidInfo;
      final deviceId = androidInfo.id;
      final fcm_id_value = deviceId;
      prefs.setString('fcm_id', fcm_id_value);
      update = true;
    }

    if (update) {
      final fcm_id = prefs.getString('fcm_id');

      updateTokenServer(token!, fcm_id!);
    }
  }

  static Future<void> deleteToken() async {
    FirebaseMessaging.instance.deleteToken();
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final fcm_id = prefs.getString('fcm_id');

    updateTokenServer('', fcm_id!);
    prefs.remove('fcm_id');
    prefs.remove('fcm_token');
  }

  static void updateTokenServer(String token, String fcm_id) {
    ApiHandler.instance.updateUserToken(token, fcm_id);
  }
}
