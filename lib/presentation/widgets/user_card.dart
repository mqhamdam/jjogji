import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/enums.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/presentation/router/app_router.dart';
import 'package:jjogji/presentation/screens/main/profile_screen.dart';
import 'package:jjogji/presentation/shimmers/user_card_shimmer.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:jjogji/presentation/widgets/user_modal_menu.dart';

class UserListTile extends StatefulWidget {
  /// MUST provide Bloc Provider for [UserBloc] in the parent widget
  const UserListTile({super.key, this.showUserMenu = true});
  final bool showUserMenu;

  @override
  State<UserListTile> createState() => _UserListTileState();
}

class _UserListTileState extends State<UserListTile>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state.user.uuid.isValid() == false) {
          return const ShUserCard();
        } else {
          return Padding(
            padding: const EdgeInsets.only(
              top: 1.0,
              left: 15,
              right: 15,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: resolveProfilePic(state.user.profilePic),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: () async {
                      //
                      final String authorUUID = state.user.uuid.getOrCrash();
                      final bool isCurrentUser =
                          BlocProvider.of<UserBloc>(context).isCurrentUser;

                      Navigator.of(context).pushNamed(
                        ProfileScreen.routeName,
                        arguments: RouteArguments(
                          {
                            'userUUID': authorUUID,
                            'isCurrentUser': isCurrentUser
                          },
                        ),
                      );
                      //}
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            UIText(
                              state.user.userName.getOrCrash(),
                              style: UITextStyles.mainTitle,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            if (state.user.verificationStatus ==
                                VerificationStatus.verified)
                              const Icon(
                                Icons.verified_rounded,
                                size: 16,
                                color: AppColorScheme.primaryColor,
                              ),
                          ],
                        ),
                        if (state.user.userID?.isValid() != null)
                          Row(
                            children: [
                              UIText(
                                "@${state.user.userID?.getOrCrash() ?? 'user ID not set'}",
                                style: UITextStyles.subtitle,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                if (widget.showUserMenu)
                  Builder(
                    builder: (context) {
                      if (BlocProvider.of<AuthBloc>(context).isCurrentUser(
                        state.user.uuid,
                      )) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: AppColorScheme.backgroundColor,
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: UIText("M", style: UITextStyles.subtitle),
                          ),
                        );
                      } else {
                        return IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              isScrollControlled: true,
                              builder: (_) {
                                return UserModalMenu(
                                  BlocProvider.of<UserBloc>(context),
                                );
                              },
                            );
                          },
                          icon: const UIIcon(
                            FontAwesomeIcons.ellipsis,
                          ),
                        );
                      }
                    },
                  ),
              ],
            ),
          );
        }
      },
    );
  }
}
