import 'dart:ui';

import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/post/post_bloc.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/presentation/shimmers/comment_card_shimmer.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/views/comments_list_view.dart';
import 'package:jjogji/presentation/widgets/readable_numbers.dart';
import 'package:jjogji/presentation/widgets/user_card.dart';

class AppCommentTile extends StatefulWidget {
  const AppCommentTile(this.appComment, {super.key});
  final AppComment appComment;
  @override
  State<AppCommentTile> createState() => _AppCommentTileState();
}

class _AppCommentTileState extends State<AppCommentTile>
    with AutomaticKeepAliveClientMixin {
  late final isCurrentUser = BlocProvider.of<AuthBloc>(context).isCurrentUser(
    widget.appComment.user.uuid,
  );

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (widget.appComment.uuid.isValid() == false) {
      return ShCommentCard(widget.appComment.commentBody.getOrCrash());
    }
    return Card(
      color: AppColorScheme.cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: BlocProvider(
                  create: (context) => UserBloc(
                    dartz.right(widget.appComment.user),
                    isCurrentUser,
                  )..add(const UserEvent.started()),
                  child: const UserListTile(
                    showUserMenu: false,
                  ),
                ),
              ),
              if (widget.appComment.replyCount != null)
                GestureDetector(
                  onTap: () {
                    final dartz.Either<PostBloc, AppComment> c =
                        dartz.right(widget.appComment);

                    showCupertinoModalPopup(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      context: context,
                      builder: (context) {
                        return CommentsListView(c);
                      },
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: AppColorScheme.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const UIIcon(FontAwesomeIcons.comments),
                          const SizedBox(
                            width: 10,
                          ),
                          ReadableNumbers(widget.appComment.replyCount!),
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                width: 10,
              )
              //UserModalMenu(_userBloc)
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 15, right: 15),
            child: Row(
              children: [
                Flexible(
                  child: UIText(
                    widget.appComment.commentBody.getOrCrash(),
                    style: const TextStyle(
                      color: AppColorScheme.textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
