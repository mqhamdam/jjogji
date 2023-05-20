import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/presentation/router/app_router.dart';
import 'package:jjogji/presentation/router/route_names.dart';
import 'package:jjogji/presentation/screens/saved_posts_screen.dart';
import 'package:jjogji/presentation/screens/settings/account_settings_screen.dart';
import 'package:jjogji/presentation/screens/settings/app_settings_screen.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorScheme.cardColor,
        title: const UIText(
          "Menu",
          style: TextStyle(
            fontSize: 18,
            color: AppColorScheme.textColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              color: AppColorScheme.cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),),
              child: Column(
                children: ListTile.divideTiles(
                  color: Colors.black,
                  tiles: [
                    ListTile(
                      onTap: () async {
                        Navigator.of(context)
                            .pushNamed(AccountSettingsScreen.routeName);
                      },
                      tileColor: Colors.transparent,
                      leading: const Icon(
                        FontAwesomeIcons.userShield,
                        color: AppColorScheme.iconColor,
                      ),
                      title: const UIText(
                        "Account Settings",
                        style: UITextStyles.mainTitle,
                      ),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppSettings.routeName),
                      tileColor: Colors.transparent,
                      leading: const Icon(
                        FontAwesomeIcons.gears,
                        color: AppColorScheme.iconColor,
                      ),
                      title: const UIText(
                        "App Settings",
                        style: UITextStyles.mainTitle,
                      ),
                    ),
                  ],
                ).toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              color: AppColorScheme.cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),),
              child: Column(
                children: ListTile.divideTiles(
                  color: Colors.black,
                  tiles: [
                    // ListTile(
                    //   tileColor: Colors.transparent,
                    //   leading: const Icon(
                    //     FontAwesomeIcons.solidBuilding,
                    //     color: AppColorScheme.iconColor,
                    //   ),
                    //   title: const UIText(
                    //     "Communities",
                    //     style: UITextStyles.mainTitle,
                    //   ),
                    //   onTap: () {},
                    // ),
                    ListTile(
                      onTap: () {
                        final user =
                            BlocProvider.of<AuthBloc>(context).userCredentials;

                        final args = RouteArguments(
                          {
                            'uuid': user!.uid,
                          },
                        );
                        Navigator.pushNamed(context, RouteNames.besties,
                            arguments: args,);
                      },
                      tileColor: Colors.transparent,
                      leading: const Icon(
                        FontAwesomeIcons.star,
                        color: AppColorScheme.iconColor,
                      ),
                      title: const UIText(
                        "Besties",
                        style: UITextStyles.mainTitle,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(SavedPostsScreen.routeName);
                      },
                      tileColor: Colors.transparent,
                      leading: const Icon(
                        FontAwesomeIcons.bookmark,
                        color: AppColorScheme.iconColor,
                      ),
                      title: const UIText(
                        "Saved",
                        style: UITextStyles.mainTitle,
                      ),
                    ),
                  ],
                ).toList(),
              ),
            ),
            const Spacer(),
            const UIText("version 0.0.1", style: UITextStyles.subtitle),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context)
                      .add(const AuthEvent.signOutButtonPressed());
                },
                style: UITextButtonStyles.simpleButton,
                child: const UIText(
                  "Log Out",
                  style: UITextStyles.mainTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
