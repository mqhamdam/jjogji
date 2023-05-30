// ignore_for_file: avoid_classes_with_only_static_members

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:country_codes/country_codes.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:jjogji/application/app/app_bloc.dart';
import 'package:jjogji/application/app_notifications/app_notifications_bloc.dart';
import 'package:jjogji/application/app_tts/app_tts_bloc.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/forms/auth_form/auth_form_bloc.dart';
import 'package:jjogji/application/pers_nav_bar/pers_nav_bar_bloc.dart';
import 'package:jjogji/firebase_options.dart';
import 'package:jjogji/infrastructure/auth/auth_facade.dart';
import 'package:jjogji/infrastructure/core/app_notify.dart';
import 'package:jjogji/presentation/screens/auth/auth_screen.dart';
import 'package:jjogji/presentation/screens/home_screen.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

late double kStatusBarHeight;

class Global {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  CountryCodes.init();
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'very_important_channel', // id
    'High Importance Notifications', // title
    importance: Importance.high,
  );

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
  );

  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  await messaging.requestPermission(
    criticalAlert: true,
    provisional: true,
  );

  /// Listen to Background messages (also listen when app is terminated)
  Notify.listenBackgroundMessages();

  final LocalizationDelegate delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en_US',
    supportedLocales: ['en_US', 'ru', 'kr'],
  );
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(LocalizedApp(delegate, MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Connectivity conn = Connectivity();

  @override
  Widget build(BuildContext context) {
    final LocalizationDelegate localizationDelegate =
        LocalizedApp.of(context).delegate;
    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: OverlaySupport.global(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  AppTtsBloc()..add(const AppTtsEvent.started()),
            ),
            BlocProvider(
              create: (context) => AuthBloc(AuthFacade.instance)
                ..add(
                  const AuthEvent.listenToAuthChanges(),
                ),
            ),
            BlocProvider(
              create: (context) => AppBloc()
                ..add(
                  const AppEvent.started(),
                ),
            ),
            BlocProvider(
              create: (context) => AppNotificationsBloc()
                ..add(const AppNotificationsEvent.init()),
            ),
            BlocProvider(
              create: (context) => PersNavBarBloc(),
            ),
          ],

          ///? connection check is combined solution for internet connection
          /// validation it uses connectivity_plus + internet_connection_checker
          /// child widget builds when device connected to global internet
          child: ConnectionCheck(
            child: MaterialApp(
              navigatorKey: Global.navigatorKey,
              localizationsDelegates: [
                DefaultMaterialLocalizations.delegate,
                DefaultWidgetsLocalizations.delegate,
                localizationDelegate
              ],
              supportedLocales: localizationDelegate.supportedLocales,
              locale: localizationDelegate.currentLocale,
              debugShowCheckedModeBanner: false,
              home: const RootScreen(),
            ),
          ),
        ),
      ),
    );
  }
}

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    kStatusBarHeight = MediaQuery.of(context).padding.top;

    FlutterNativeSplash.remove();
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.map(
          loading: (state) => const Scaffold(
            body: ColoredBox(
              color: Colors.black,
              child: Center(
                child: UIText(
                  "Loading",
                  style: UITextStyles.headLine,
                ),
              ),
            ),
          ),
          authenticated: (s) => FutureBuilder<User>(
            future: BlocProvider.of<AuthBloc>(context).getSignedInUser(),
            builder: (context, AsyncSnapshot<User> snapshot) {
              if (snapshot.data != null) {
                return const HomeScreen();
              } else {
                return const Scaffold(
                  backgroundColor: Colors.black,
                  body: Text('f'),
                );
              }
            },
          ),
          unAuthenticated: (state) => BlocProvider(
            create: (context) =>
                AuthFormBloc(BlocProvider.of<AuthBloc>(context).authFacade),
            child: const AuthScreen(),
          ),
        );
      },
    );
  }
}
