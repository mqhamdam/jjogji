import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/app_notifications/prefs/app_notification_prefs_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:lottie/lottie.dart';

class NotificationSettingsView extends StatelessWidget {
  NotificationSettingsView({super.key});
  final AppNotificationPrefsBloc _appNotificationPrefsBloc =
      AppNotificationPrefsBloc()..add(const AppNotificationPrefsEvent.started());
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _appNotificationPrefsBloc,
      child: BlocBuilder<AppNotificationPrefsBloc, AppNotificationPrefsState>(
        builder: (context, state) {
          if (state.init == false) {
            return Container();
          } else {
            return Transform.scale(
              scale: 1.006,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(color: Colors.tealAccent),
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(53)),
                ),
                height: MediaQuery.of(context).size.height * 0.6,
                child: Transform.scale(
                  scale: 0.990,
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 18.0, bottom: 15),
                            child: UIText(' Notification Preferences',
                                style: UITextStyles.headLine,),
                          ),
                          SwitchListTile(
                            value: state.prefs.isEnabled,
                            onChanged: (value) {
                              _appNotificationPrefsBloc.add(
                                  const AppNotificationPrefsEvent.toggleEnable(),);
                            },
                            title: const UIText('Enable Notifications',
                                style: UITextStyles.mainTitle,),
                          ),
                          CheckboxListTile(
                            secondary: Material(
                              color: Colors.white,
                              shape: const CircleBorder(),
                              child: Lottie.asset(
                                'assets/lottie/information_session.json',
                                height: 50,
                              ),
                            ),
                            checkboxShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),),
                            value: state.prefs.info,
                            dense: true,
                            tristate: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15,),
                            tileColor: AppColorScheme.cardColor,
                            onChanged: (value) {
                              _appNotificationPrefsBloc.add(
                                  const AppNotificationPrefsEvent.toggleInfo(),);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33),),
                            // contentPadding:
                            //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            title: const UIText('Info Notifications',
                                style: UITextStyles.mainTitle,),
                          ),
                          const SizedBox(height: 10),
                          CheckboxListTile(
                            secondary: Material(
                              color: Colors.white,
                              shape: const CircleBorder(),
                              child: Lottie.asset(
                                'assets/lottie/heart2.json',
                                height: 50,
                              ),
                            ),
                            checkboxShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),),
                            value: state.prefs.like,
                            dense: true,
                            tristate: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15,),
                            tileColor: AppColorScheme.cardColor,
                            onChanged: (value) {
                              _appNotificationPrefsBloc.add(
                                  const AppNotificationPrefsEvent.toggleLike(),);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                            // contentPadding:
                            //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            title: const UIText('Follow Notifications',
                                style: UITextStyles.mainTitle,),
                          ),
                          const SizedBox(height: 10),
                          CheckboxListTile(
                            secondary: Material(
                              color: Colors.white,
                              shape: const CircleBorder(),
                              child: Lottie.asset(
                                'assets/lottie/user.json',
                                height: 50,
                              ),
                            ),
                            checkboxShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            value: state.prefs.follow,
                            dense: true,
                            tristate: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15,),
                            tileColor: AppColorScheme.cardColor,
                            onChanged: (value) {
                              _appNotificationPrefsBloc.add(
                                  const AppNotificationPrefsEvent.toggleFollow(),);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                            // contentPadding:
                            //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            title: const UIText('Follow Notifications',
                                style: UITextStyles.mainTitle,),
                          ),
                          const SizedBox(height: 10),
                          CheckboxListTile(
                            secondary: Material(
                              color: Colors.white,
                              shape: const CircleBorder(),
                              child: Lottie.asset(
                                'assets/lottie/comment2.json',
                                height: 50,
                              ),
                            ),
                            checkboxShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),),
                            value: state.prefs.comments,
                            dense: true,
                            tristate: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15,),
                            tileColor: AppColorScheme.cardColor,
                            onChanged: (value) {
                              _appNotificationPrefsBloc.add(
                                  const AppNotificationPrefsEvent.toggleComments(),);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33),),
                            // contentPadding:
                            //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            title: const UIText('Comments Notifications',
                                style: UITextStyles.mainTitle,),
                          ),
                          const Divider(
                            color: Colors.white,
                            thickness: 0.5,
                          ),
                          //SizedBox(height: 10,),
                          AnimatedCrossFade(
                            duration: kThemeAnimationDuration,
                            crossFadeState: CrossFadeState.showFirst,
                            secondChild: const SizedBox(),
                            firstChild: ElevatedButton(
                              style: UITextButtonStyles.saveButton,
                              onPressed: _appNotificationPrefsBloc.isChanged
                                  ? () {
                                      _appNotificationPrefsBloc.add(
                                        AppNotificationPrefsEvent.updated(
                                          state.prefs,
                                        ),
                                      );
                                      Navigator.of(context).pop();
                                    }
                                  : null, // () {},
                              child: const UIText(
                                'Save Changes',
                                style: UITextStyles.mainTitle,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
