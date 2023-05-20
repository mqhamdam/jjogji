// import 'dart:ffi';

// import 'package:dartz/dartz.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:jjogji/domain/notifications/notification.dart';

// abstract class INotifications {
//   Future<Either<Unit, List<AppNotification>>> getNotifications(int skip);

//   Stream<AppNotification> listenToNotifications();
// }

// Future<void> dd() async{
//   final FirebaseMessaging messaging = FirebaseMessaging.instance;
//   final NotificationSettings settings = await messaging.requestPermission();
//   FirebaseMessaging.onBackgroundMessage((message) async => Void);
//   FirebaseMessaging.onMessageOpenedApp.listen((event) {});
// }
