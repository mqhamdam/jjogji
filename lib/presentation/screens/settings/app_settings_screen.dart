// ignore_for_file: use_build_context_synchronously

import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:jjogji/infrastructure/core/report_dto.dart';
import 'package:jjogji/presentation/screens/settings/view/notification_settings_view.dart';
import 'package:jjogji/presentation/screens/settings/view/translate_languages.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/report_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});
  static const String routeName = "/app_settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorScheme.cardColor,
        title: const UIText(
          "App Settings",
          style: TextStyle(
            fontSize: 18,
            color: AppColorScheme.textColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Set app UI language

            /// change translate to page
            ListTile(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: const TranslateLanguagesView(),
                    );
                  },
                );
              },
              tileColor: Colors.transparent,
              leading: const Icon(
                Icons.translate,
                color: Colors.white,
              ),
              title: const Text(
                "Translate to",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),

            /// notifications
            ListTile(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: NotificationSettingsView(),
                    );
                  },
                );
              },
              tileColor: Colors.transparent,
              leading: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: const Text(
                "Notifications",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),

            /// delete cache
            ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => FadeIn(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.blueGrey[900],
                        title: const UIText('Clear cache',
                            style: UITextStyles.headLine,),
                        content: const UIText(
                          'Are you sure you want to clear cache? Cached Images, settings will be removed. ',
                          style: UITextStyles.mainTitle,
                          maxLines: 5,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () async {
                              await SharedPreferences.getInstance()
                                  .then((value) => value.clear());

                              await DefaultCacheManager().emptyCache();
                              Navigator.pop(context);
                            },
                            child: const UIText(
                              'Yes',
                              style: UITextStyles.headLine,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const UIText(
                              'No',
                              style: UITextStyles.headLine,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              tileColor: Colors.transparent,
              leading: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
              title: const Text(
                "Delete Cache",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            // Help and Support
            ListTile(
              onTap: () {
                showReportDialog(context, null, ReportType.other);
              },
              tileColor: Colors.transparent,
              leading: const Icon(
                Icons.help,
                color: Colors.white,
              ),
              title: const Text(
                "Help and Support",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            //about
            ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Theme(
                        data: ThemeData(
                          textTheme: const TextTheme(),
                          dialogTheme: DialogTheme(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                          ),
                        ),
                        child: const AboutDialog(
                          applicationName: "Jjogji",
                          applicationVersion: "1.0.0",
                          applicationIcon: Icon(
                            FontAwesome.android,
                          ),
                          children: [
                            Text(
                              "Jjogji is a social media app that allows you to connect with friends and family",
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              tileColor: Colors.transparent,
              leading: const Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: const Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
