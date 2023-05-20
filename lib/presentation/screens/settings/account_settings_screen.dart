// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/account_settings/account_settings_bloc.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/enums.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/domain/user/value_objects.dart';
import 'package:jjogji/presentation/screens/settings/helpers/func.dart';
import 'package:jjogji/presentation/screens/settings/view/add_linked_contact.dart';
import 'package:jjogji/presentation/screens/settings/view/change_email_view.dart';
import 'package:jjogji/presentation/screens/settings/view/change_password_view.dart';
import 'package:jjogji/presentation/screens/settings/view/delete_acc_view.dart';
import 'package:jjogji/presentation/screens/settings/view/email_verification_view.dart';
import 'package:jjogji/presentation/screens/settings/view/style_avatar_view.dart';
import 'package:jjogji/presentation/screens/settings/view/userid_editor_view.dart';
import 'package:jjogji/presentation/screens/settings/widgets/linked_contact_tile.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/disableale.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:overlay_support/overlay_support.dart';

class ExpansionPanelItem {
  ExpansionPanelItem({
    required this.isExpanded,
  });

  bool isExpanded;
}

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});
  static const String routeName = "/acount_settings";

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool isExpanded = false;

  final AccountSettingsBloc _accountSettingsBloc = AccountSettingsBloc()
    ..add(
      const AccountSettingsEvent.started(),
    );

  late final List<ExpansionPanelItem> items = List.generate(
    _accountSettingsBloc.state.userTempData.linkedContacts.length,
    (index) => ExpansionPanelItem(isExpanded: false),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _accountSettingsBloc,
      child: Builder(
        builder: (context) {
          return BlocBuilder<AccountSettingsBloc, AccountSettingsState>(
            builder: (context, state) {
              if (state.userData.uuid.isValid() == false) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Scaffold(
                  backgroundColor: AppColorScheme.backgroundColor,
                  appBar: AppBar(
                    backgroundColor: AppColorScheme.backgroundColor,
                    title: const UIText('Account Settings', style: TextStyle()),
                    centerTitle: true,
                    actions: [
                      AnimatedCrossFade(
                        duration: kThemeAnimationDuration,
                        crossFadeState: _accountSettingsBloc.isChanged
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        firstChild: IconButton(
                          onPressed: () {
                            _accountSettingsBloc.add(
                              const AccountSettingsEvent.saveChanges(),
                            );
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            FontAwesomeIcons.circleCheck,
                            color: Colors.tealAccent,
                          ),
                        ),
                        secondChild: Container(),
                      ),
                    ],
                  ),
                  body: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Transform.scale(
                          scale: 1.3,
                          child: resolveProfilePic(
                            state.userTempData.profilePic,
                            isLarge: true,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            style: UITextButtonStyles.simpleButton,
                            onPressed: () async {
                              final ProfilePic? profilePic =
                                  await showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(33),
                                  ),
                                ),
                                barrierColor: Colors.black87,
                                backgroundColor: AppColorScheme.cardColor,
                                builder: (context) {
                                  return StyleAvatarView(
                                    state.userTempData.profilePic,
                                    currentReputation:
                                        state.userData.reputation,
                                  );
                                },
                              );
                              if (profilePic != null) {
                                _accountSettingsBloc.add(
                                  AccountSettingsEvent.changeProfilePicStyle(
                                    profilePic,
                                  ),
                                );
                              }
                            },
                            child: const UIText(
                              'Change Style',
                              style: TextStyle(),
                            ),
                          ),
                        ),
                        if (state.userData.reputation > 4000)
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(33),
                                  ),
                                ),
                                backgroundColor: Colors.blueGrey[900],
                                builder: (c) {
                                  return UserIDEditorView(
                                    state.userData.userID ?? UserID(''),
                                  );
                                },
                              );
                            },
                            style: UITextButtonStyles.simpleButton,
                            child: UIText(
                              '@${state.userData.userID?.getOrElse('dflt') ?? ''}',
                              style: const TextStyle(),
                            ),
                          ),
                        ListTile(
                          title: const UIText(
                            'Email verified',
                            style: UITextStyles.mainTitle,
                          ),
                          subtitle: UIText(
                            _accountSettingsBloc.getSignedUser.email!,
                            style: UITextStyles.subtitle,
                          ),
                          trailing: _accountSettingsBloc
                                      .getSignedUser.emailVerified ==
                                  false
                              ? const Icon(
                                  FontAwesomeIcons.xmark,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  FontAwesomeIcons.check,
                                  color: Colors.green,
                                ),
                          onTap: () async {
                            await showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(43),
                                ),
                              ),
                              backgroundColor: AppColorScheme.cardColor,
                              isScrollControlled: true,
                              builder: (context) {
                                return const EmailVerificationView();
                              },
                            );
                          },
                        ),
                        Disableable(
                          disable: state.userData.reputation < 7000,
                          child: ListTile(
                            enabled: state.userData.reputation > 7000,
                            title: const UIText(
                              'Account Verified',
                              style: UITextStyles.mainTitle,
                            ),
                            trailing: SizedBox(
                              height: 30,
                              width: 30,
                              child: Builder(
                                builder: (_) {
                                  switch (state.userData.verificationStatus) {
                                    case VerificationStatus.none:
                                      return GestureDetector(
                                        onTap: () {
                                          _accountSettingsBloc.add(
                                            const AccountSettingsEvent
                                                .requestAccountVerification(),
                                          );
                                        },
                                        child: const Icon(
                                          FontAwesomeIcons.slash,
                                          color: Colors.grey,
                                        ),
                                      );
                                    case VerificationStatus.pending:
                                      return GestureDetector(
                                        onTap: () {
                                          toast('Verification is pending');
                                        },
                                        child: const Icon(
                                          FontAwesomeIcons.clock,
                                          color: Colors.yellow,
                                        ),
                                      );
                                    case VerificationStatus.verified:
                                      return const Icon(
                                        FontAwesomeIcons.check,
                                        color: Colors.green,
                                      );
                                    case VerificationStatus.unverified:
                                      return const Icon(
                                        FontAwesomeIcons.xmark,
                                        color: Colors.red,
                                      );
                                    default:
                                      return Container();
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              const UIText(
                                'Linked Contacts',
                                style: UITextStyles.headLine,
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () async {
                                  final LinkedContact? lcOrNothing =
                                      await showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(43),
                                      ),
                                    ),
                                    backgroundColor: AppColorScheme.cardColor,
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (_) =>
                                        const AddLinkedAccount(null),
                                  );
                                  if (lcOrNothing != null) {
                                    _accountSettingsBloc.add(
                                      AccountSettingsEvent.addLinkedContact(
                                        lcOrNothing,
                                      ),
                                    );
                                  }
                                },
                                icon: const Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.tealAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          child: ReorderableListView.builder(
                            proxyDecorator: (child, index, animation) {
                              return AnimatedBuilder(
                                animation: animation,
                                builder: (context, child) {
                                  return child!;
                                },
                                child: child,
                              );
                            },
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return LinkedContactTile(
                                state.userTempData.linkedContacts[index],
                                key: ValueKey(
                                  state.userTempData.linkedContacts[index],
                                ),
                                onDelete: () {
                                  _accountSettingsBloc.add(
                                    AccountSettingsEvent.removeLinkedContact(
                                      index,
                                    ),
                                  );
                                },
                                onEdit: () async {
                                  final LinkedContact? linkedContact =
                                      await showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(43),
                                      ),
                                    ),
                                    backgroundColor: AppColorScheme.cardColor,
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (_) => AddLinkedAccount(
                                      state.userTempData.linkedContacts[index],
                                    ),
                                  );
                                  if (linkedContact != null) {
                                    _accountSettingsBloc.add(
                                      AccountSettingsEvent.replaceLinkedContact(
                                        index,
                                        linkedContact,
                                      ),
                                    );
                                  }
                                },
                              );
                            },
                            itemCount: state.userTempData.linkedContacts.length,
                            onReorder: (oldIndex, newIndex) {
                              _accountSettingsBloc.add(
                                AccountSettingsEvent.changeLinkedContactOrder(
                                  oldIndex,
                                  newIndex,
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        const UIText(
                          'Action on Account',
                          style: UITextStyles.headLine,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: [
                            // change email
                            ListTile(
                              title: const UIText(
                                'Change Email',
                                style: UITextStyles.mainTitle,
                              ),
                              subtitle: const UIText(
                                'Change your email',
                                style: UITextStyles.subtitle,
                              ),
                              trailing: const Icon(
                                FontAwesome5.envelope,
                                color: Colors.blue,
                              ),
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(33),
                                    ),
                                  ),
                                  backgroundColor: Colors.blueGrey[900],
                                  builder: (context) {
                                    return const ChangeEmailView();
                                  },
                                );
                              },
                            ),
                            //change password
                            ListTile(
                              title: const UIText(
                                'Change Password',
                                style: UITextStyles.mainTitle,
                              ),
                              subtitle: const UIText(
                                'Change your password',
                                style: UITextStyles.subtitle,
                              ),
                              trailing: const Icon(
                                FontAwesome5.lock,
                                color: Colors.blue,
                              ),
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(33),
                                    ),
                                  ),
                                  backgroundColor: Colors.blueGrey[900],
                                  builder: (context) {
                                    return const ChangePasswordView();
                                  },
                                );
                              },
                            ),

                            ListTile(
                              title: const UIText(
                                'Delete Account',
                                style: UITextStyles.mainTitle,
                              ),
                              subtitle: const UIText(
                                'Delete your account permanently',
                                style: UITextStyles.subtitle,
                              ),
                              trailing: const Icon(
                                FontAwesome5.user_slash,
                                color: Colors.red,
                              ),
                              onTap: () async {
                                final resp = await showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(33),
                                    ),
                                  ),
                                  backgroundColor: Colors.blueGrey[900],
                                  builder: (context) {
                                    return const DeleteAccountView();
                                  },
                                );

                                if (resp != null) {
                                  final bool? ag =
                                      await showDeleteAccountDialog(context);
                                  if (ag == true) {
                                    _accountSettingsBloc.add(
                                      AccountSettingsEvent.deleteAccount(
                                        resp as String,
                                      ),
                                    );
                                  }
                                }
                              },
                            ),
                            const Divider(
                              color: Colors.grey,
                            ),
                            ListTile(
                              onTap: () {
                                BlocProvider.of<AuthBloc>(context).add(
                                  const AuthEvent.signOutButtonPressed(),
                                );
                              },
                              title: const UIText(
                                'Logout',
                                style: UITextStyles.mainTitle,
                              ),
                              subtitle: const UIText(
                                'Logout from this device',
                                style: UITextStyles.subtitle,
                              ),
                              trailing: const Icon(
                                FontAwesome5.sign_out_alt,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
