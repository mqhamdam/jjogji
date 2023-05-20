import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/post/post_bloc.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/infrastructure/core/report_dto.dart';
import 'package:jjogji/presentation/router/app_router.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/report_dialog.dart';

class PostModalMenu extends StatelessWidget {
  const PostModalMenu(this._userBloc, this._postBloc, {super.key});

  final UserBloc _userBloc;
  final PostBloc _postBloc;

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
    showReportDialog(context, _postBloc.state.post.uuid, ReportType.post);
  }

  void _visitAuthorPage(BuildContext context) {
    AppRouter.pushToUserPage(_userBloc.state.user.uuid, context: context);
  }

  void _copyLinkBtnPressed() {
    final link = _postBloc.getPostlink;
    Clipboard.setData(ClipboardData(text: link));
  }

  void _copyTextBtnPressed() {
    final postBodyStr = _postBloc.state.post.postBody.getOrCrash();
    Clipboard.setData(ClipboardData(text: postBodyStr));
  }

  @override
  Widget build(BuildContext context) {
    final ListTile subscribeTile = ListTile(
      leading: const Icon(
        FontAwesome.plus,
        color: Colors.green,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Subscribe", style: UITextStyles.mainTitle),
      onTap: _subscribeToggle,
    );

    final ListTile unSubscribeTile = ListTile(
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

    // final ListTile deletePostTile = ListTile(
    //   shape: const RoundedRectangleBorder(
    //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(33)),
    //   ),
    //   leading: const Icon(
    //     FontAwesome.trash,
    //     color: Colors.redAccent,
    //   ),
    //   tileColor: AppColorScheme.cardColor,
    //   title: const UIText("Delete Post", style: UITextStyles.mainTitle),
    //   onTap: _deleteBtnPressed,
    // );

    final ListTile visitAuthorPageTile = ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
      ),
      leading: const Icon(
        FontAwesome.user,
        color: Colors.blueAccent,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Visit Author Page", style: UITextStyles.mainTitle),
      onTap: () => _visitAuthorPage(context),
    );

    final ListTile copyTextBodyTile = ListTile(
      leading: const Icon(
        FontAwesomeIcons.copy,
        color: Colors.teal,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Copy Text", style: UITextStyles.mainTitle),
      onTap: _copyTextBtnPressed,
    );

    final ListTile translateTile = ListTile(
      leading: const Icon(
        FontAwesomeIcons.language,
        color: Colors.limeAccent,
      ),
      tileColor: AppColorScheme.cardColor,
      title: UIText(
        _postBloc.state.translatedPostBody.isValid()
            ? "Show Original"
            : "Translate",
        style: UITextStyles.mainTitle,
      ),
      onTap: () {
        _postBloc.add(const PostEvent.translatePost());
        Navigator.of(context).pop();
      },
    );

    final ListTile copyLinkTile = ListTile(
      leading: const Icon(
        FontAwesomeIcons.link,
        color: Colors.blueGrey,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Copy Link", style: UITextStyles.mainTitle),
      onTap: _copyLinkBtnPressed,
    );

    final ListTile alertTile = ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(33)),
      ),
      leading: const Icon(
        FontAwesomeIcons.circleExclamation,
        color: Colors.orange,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Report", style: UITextStyles.mainTitle),
      onTap: () => _alertBtnPressed(context),
    );

    final ListTile speechListTile = ListTile(
      leading: const Icon(
        FontAwesomeIcons.volumeHigh,
        color: Colors.cyanAccent,
      ),
      tileColor: AppColorScheme.cardColor,
      title: const UIText("Text to Speech", style: UITextStyles.mainTitle),
      onTap: () {
        _postBloc.add(const PostEvent.speechPost());
      },
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _userBloc),
        BlocProvider.value(value: _postBloc),
      ],
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
                  visitAuthorPageTile,
                  copyTextBodyTile,
                  copyLinkTile,
                  translateTile,
                  speechListTile,
                  if (_userBloc.isCurrentUser == false) ...[
                    if (state.userRelation.follow)
                      unSubscribeTile
                    else
                      subscribeTile,
                    if (state.userRelation.bestie)
                      removeBestieTile
                    else
                      addBestieTile,
                    if (state.userRelation.block) unBlockTile else blocTile,
                    alertTile
                  ],
                  // if (_userBloc.isCurrentUser) ...[deletePostTile],
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
