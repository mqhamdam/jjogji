import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/post/post_bloc.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/presentation/router/app_router.dart';
import 'package:jjogji/presentation/router/route_names.dart';
import 'package:jjogji/presentation/shimmers/post_card_shimmer.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/views/comments_list_view.dart';
import 'package:jjogji/presentation/widgets/bookmark_button.dart';
import 'package:jjogji/presentation/widgets/like_button.dart';
import 'package:jjogji/presentation/widgets/post_modal_menu.dart';
import 'package:jjogji/presentation/widgets/readable_numbers.dart';
import 'package:jjogji/presentation/widgets/user_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:share_plus/share_plus.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard>
    with AutomaticKeepAliveClientMixin {
  /// ? This is important to keep widget alive while user scrolling
  @override
  bool get wantKeepAlive => true;
  ///////

  bool showFullText = false;

  void _tapOnPostBody() {
    setState(() {
      showFullText = !showFullText;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        if (state.post == Post.empty()) {
          return Container();
        } else {
          if (state.post.authoruuid.isValid() == false) {
            return Container();
          } else {
            return BlocProvider<UserBloc>.value(
              value: BlocProvider.of<PostBloc>(context).userBloc!,
              child: Builder(
                builder: (context) => BlocBuilder<UserBloc, UserState>(
                  builder: (context, userState) {
                    if (userState.user.uuid.isValid() == false) {
                      return const ShPostCard();
                    } else {
                      return Card(
                        color: AppColorScheme.cardColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33),
                        ),
                        child: Stack(
                          children: [
                            if (state.post.postVisibilityType ==
                                PostVisibilityType.private)
                              Positioned.fill(
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: LayoutBuilder(
                                    builder: (context, constraint) {
                                      return Icon(
                                        FontAwesome5.shield_alt,
                                        color:
                                            const Color.fromARGB(30, 0, 0, 0),
                                        size: constraint.biggest.height,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            if (state.post.postVisibilityType ==
                                PostVisibilityType.besties)
                              Positioned.fill(
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: LayoutBuilder(
                                    builder: (context, constraint) {
                                      return Transform.rotate(
                                        angle: 50.0,
                                        child: Icon(
                                          FontAwesomeIcons.star,
                                          color:
                                              const Color.fromARGB(36, 0, 0, 0),
                                          size: constraint.biggest.height,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: BlocProvider.value(
                                        value:
                                            BlocProvider.of<PostBloc>(context)
                                                .userBloc!,
                                        child: const UserListTile(
                                          showUserMenu: false,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (_) {
                                            return PostModalMenu(
                                              BlocProvider.of<PostBloc>(
                                                context,
                                              ).userBloc!,
                                              BlocProvider.of<PostBloc>(
                                                context,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      icon: const UIIcon(
                                        FontAwesomeIcons.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: AppColorScheme.backgroundColor,
                                  thickness: 0.2,
                                ),
                                Row(
                                  children: [
                                    if (state.isTranslating)
                                      Flexible(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 10,
                                            ),
                                            child: LoadingAnimationWidget
                                                .prograssiveDots(
                                              color:
                                                  AppColorScheme.primaryColor,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (state.isTranslating != true)
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                          ),
                                          child: GestureDetector(
                                            onTap: _tapOnPostBody,
                                            child: Text(
                                              state.translatedPostBody.isValid()
                                                  ? state.translatedPostBody
                                                      .getOrCrash()
                                                  : state.post.postBody
                                                      .getOrCrash(),
                                              style: const TextStyle(
                                                fontSize: 17,
                                                color: AppColorScheme.textColor,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: showFullText
                                                  ? 9999999999999
                                                  : 4,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                const Divider(
                                  color: AppColorScheme.backgroundColor,
                                  thickness: 0.2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    bottom: 10,
                                    right: 20,
                                  ),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onLongPress: () {
                                          final args = RouteArguments({
                                            'uuid':
                                                state.post.uuid.getOrCrash(),
                                          });
                                          Navigator.of(context).pushNamed(
                                            RouteNames.likes,
                                            arguments: args,
                                          );
                                        },
                                        child: LikeButton(
                                          state.postRelation.like,
                                          onTap: () {
                                            BlocProvider.of<PostBloc>(context)
                                                .add(
                                              const PostEvent
                                                  .likeButtonPressed(),
                                            );
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          final args = RouteArguments({
                                            'uuid':
                                                state.post.uuid.getOrCrash(),
                                          });
                                          Navigator.of(context).pushNamed(
                                            RouteNames.likes,
                                            arguments: args,
                                          );
                                        },
                                        child: ReadableNumbers(
                                          state.post.likeCount,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      GestureDetector(
                                          onTap: state.post.commentEnabled
                                              ? () async {
                                                  final PostBloc post =
                                                      BlocProvider.of<PostBloc>(
                                                    context,
                                                  );
                                                  final dartz.Either<PostBloc,
                                                          AppComment> c =
                                                      dartz.Left(post);
                                                  final RouteArguments
                                                      arguments =
                                                      RouteArguments({
                                                    'postblocOrAppComment': c,
                                                  });
                                                  await Navigator.of(context)
                                                      .pushNamed(
                                                    CommentsListView.routeName,
                                                    arguments: arguments,
                                                  );
                                                }
                                              : () {
                                                  toast(
                                                      'Comments are disabled',);
                                                },
                                          child: state.post.commentEnabled
                                              ? const Icon(
                                                  FontAwesomeIcons.comment,
                                                  color:
                                                      AppColorScheme.iconColor,)
                                              : const Icon(
                                                  FontAwesomeIcons.commentSlash,
                                                  color: AppColorScheme
                                                      .inactiveColor,
                                                ),),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      if (state.post.commentEnabled)
                                        ReadableNumbers(
                                          state.post.commentCount,
                                        ),
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Share.share('text', subject: "url");
                                        },
                                        child: const Icon(
                                          FontAwesomeIcons.share,
                                          color: AppColorScheme.iconColor,
                                        ),
                                      ),
                                      const Spacer(),
                                      BookmarkButton(state.postRelation.save,
                                          () {
                                        BlocProvider.of<PostBloc>(context).add(
                                          const PostEvent.saveButtonPressed(),
                                        );
                                      })
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
            );
          }
        }
      },
    );
  }
}
