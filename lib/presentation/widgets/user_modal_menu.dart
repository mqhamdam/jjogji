import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/infrastructure/core/report_dto.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/report_dialog.dart';

class UserModalMenu extends StatelessWidget {
  const UserModalMenu(this._userBloc, {super.key});
  final UserBloc _userBloc;

  void _subscribeToggle() {
    _userBloc.add(const UserEvent.subscribeButtonPressed());
  }

  void _bestieToggle() {
    _userBloc.add(const UserEvent.bestiesButtonPressed());
  }

  void _blockToggle() {
    _userBloc.add(const UserEvent.blockButtonPressedEvent());
  }

  void _alertBtnPressed(BuildContext context) {
    showReportDialog(
      context,
      _userBloc.state.user.uuid,
      ReportType.user,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ListTile subscribeTile = ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
      ),
      leading: const Icon(
        FontAwesome.plus,
        color: Colors.green,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Subscribe", style: UITextStyles.mainTitle),
      onTap: _subscribeToggle,
    );

    final ListTile unSubscribeTile = ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
      ),
      leading: const Icon(
        FontAwesome.minus,
        color: Colors.redAccent,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Unsubscribe", style: UITextStyles.mainTitle),
      onTap: _subscribeToggle,
    );

    final ListTile addBestieTile = ListTile(
      leading: const Icon(
        FontAwesome.star,
        color: Colors.yellow,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Add as Bestie", style: UITextStyles.mainTitle),
      onTap: _bestieToggle,
    );

    final ListTile removeBestieTile = ListTile(
      leading: const Icon(
        FontAwesome.star_half_alt,
        color: Colors.yellow,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Remove Bestie", style: UITextStyles.mainTitle),
      onTap: _bestieToggle,
    );

    final ListTile blocTile = ListTile(
      leading: const Icon(
        FontAwesome.block,
        color: Colors.grey,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Block User", style: UITextStyles.mainTitle),
      onTap: _blockToggle,
    );

    final ListTile unBlockTile = ListTile(
      leading: const Icon(
        FontAwesome.block,
        color: Colors.red,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Unblock User", style: UITextStyles.mainTitle),
      onTap: _blockToggle,
    );

    return BlocProvider.value(
      value: _userBloc,
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
              ...ListTile.divideTiles(
                color: AppColorScheme.backgroundColor,
                tiles: [
                  if (state.userRelation.follow)
                    unSubscribeTile
                  else
                    subscribeTile,
                  if (state.userRelation.bestie)
                    removeBestieTile
                  else
                    addBestieTile,
                  if (state.userRelation.block) unBlockTile else blocTile,
                  ListTile(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(33)),
                    ),
                    leading: const Icon(
                      FontAwesomeIcons.circleExclamation,
                      color: Colors.orange,
                    ),
                    tileColor: AppColorScheme.cardColor,
                    title:
                        const UIText("Report", style: UITextStyles.mainTitle),
                    onTap: () => _alertBtnPressed(context),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          );
        },
      ),
    );
  }
}
