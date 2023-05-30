import 'dart:async';
import 'dart:ui';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/pers_nav_bar/pers_nav_bar_bloc.dart';
import 'package:jjogji/infrastructure/core/app_notify.dart';
import 'package:jjogji/presentation/router/app_router.dart';
import 'package:jjogji/presentation/router/pers_bottom_sheet/pers_bottom_nav_bar.dart';
import 'package:jjogji/presentation/screens/create_post_screen.dart';
import 'package:jjogji/presentation/screens/main/discover_screen.dart';
import 'package:jjogji/presentation/screens/main/menu_screen.dart';
import 'package:jjogji/presentation/screens/main/posts_screen.dart';
import 'package:jjogji/presentation/screens/main/profile_screen.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/overlay_widget.dart';
import 'package:jjogji/presentation/widgets/tts_player.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

class PersNavBarBase extends StatefulWidget {
  const PersNavBarBase({super.key});

  @override
  State<PersNavBarBase> createState() => _PersNavBarBaseState();
}

class _PersNavBarBaseState extends State<PersNavBarBase> {
  final PersistentTabController _persistentTabController =
      PersistentTabController();

  final List<PersistentBottomNavBarItem> navItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(
        FontAwesomeIcons.fire,
      ),
      activeColorPrimary: AppColorScheme.primaryColor,
      inactiveColorPrimary: AppColorScheme.whiteColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        FontAwesomeIcons.magnifyingGlass,
      ),
      activeColorPrimary: AppColorScheme.primaryColor,
      inactiveColorPrimary: AppColorScheme.whiteColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        FontAwesomeIcons.user,
      ),
      activeColorPrimary: AppColorScheme.primaryColor,
      inactiveColorPrimary: AppColorScheme.whiteColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        FontAwesomeIcons.ellipsis,
      ),
      activeColorPrimary: AppColorScheme.primaryColor,
      inactiveColorPrimary: AppColorScheme.whiteColor,
    ),
  ];

  void _onItemSelected(int i) {
    setState(() {
      _persistentTabController.index = i;
    });
  }

  late final List<Widget> mainScreens;
  late final AppRouter router;
  late final StreamSubscription? stream;

  @override
  void initState() {
    FirebaseMessaging.onMessageOpenedApp.listen((event) {});

    FirebaseMessaging.instance.getInitialMessage().then((value) {});

    Notify.handleToken(null);
    Notify.listenTokenChanges().listen(Notify.handleToken);
    stream = Notify.listenRemoteMessages();
    router = AppRouter();
    print(FirebaseMessaging.instance.getToken());
    mainScreens = [
      const PostsScreen(),
      const DiscoverScreen(),
      ProfileScreen(context.read<AuthBloc>().userCredentials!.uid, true),
      const MenuScreen(),
    ];

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    stream?.cancel();
    // _floatingOverController.close();
    super.dispose();
  }

  late BuildContext currentContext;

  void popHome() {
    Navigator.of(currentContext).popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    //
    if (context.read<AuthBloc>().userCredentials?.uid == null) {
      return Container();
    } else {
      return BlocBuilder<PersNavBarBloc, PersNavBarState>(
        //buildWhen: (previous, current) => previous.hideBar != current.hideBar,

        builder: (context, state) {
          return OverlayWidget(
            backgroundScreen: PersistentTabView.custom(
              context,
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  showCupertinoModalPopup(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                      tileMode: TileMode.decal,
                    ),
                    context: context,
                    builder: (context) {
                      return const CreatePostScreen();
                    },
                  );
                },
                backgroundColor: AppColorScheme.primaryColor,
                child: const Icon(
                  FontAwesomeIcons.pen,
                  color: AppColorScheme.cardColor,
                  size: 18,
                ),
              ),
              routeAndNavigatorSettings: CustomWidgetRouteAndNavigatorSettings(
                onGenerateRoute: router.generateRoutes,
                navigatorObservers: <NavigatorObserver>[],
              ),
              backgroundColor: Colors.transparent,
              customWidget: PersBottomNavBar(
                selectIndex: _persistentTabController.index,
                onItemSelected: _onItemSelected,
                navBarItems: navItems,
                onDoubleTap: popHome,
              ),
              selectedTabScreenContext: (p0) {
                currentContext = p0!;
              },
              onWillPop: (context) async {
                return true;
              },
              controller: _persistentTabController,
              itemCount: navItems.length,
              screens: mainScreens,
              hideNavigationBar: state.hideBar,
            ),
            child: const TTSPlayer(),
          );
        },
      );
    }
  }
}
