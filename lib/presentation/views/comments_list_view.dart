import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/Views/comments_list_view/comments_list_view_bloc.dart';
import 'package:jjogji/application/post/post_bloc.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/app_comment_tile.dart';
import 'package:jjogji/presentation/widgets/comment_text_field.dart';
import 'package:jjogji/presentation/widgets/post_card.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CommentsListView extends StatefulWidget {
  const CommentsListView(this.postuuidOrComment, {super.key});
  final dartz.Either<PostBloc, AppComment> postuuidOrComment;

  static const String routeName = '/comments';

  @override
  State<CommentsListView> createState() => _CommentsListViewState();
}

class _CommentsListViewState extends State<CommentsListView> {
  late final CommentsListViewBloc _commentsListViewBloc;
  late final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    widget.postuuidOrComment.fold((l) {
      _commentsListViewBloc =
          CommentsListViewBloc(dartz.left(l.state.post.uuid));
    }, (r) {
      _commentsListViewBloc = CommentsListViewBloc(dartz.right(r));
    });
    _commentsListViewBloc.add(const CommentsListViewEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _commentsListViewBloc,
      child: Scaffold(
        backgroundColor: AppColorScheme.backgroundColor,
        resizeToAvoidBottomInset: true,
        body: BlocBuilder<CommentsListViewBloc, CommentsListViewState>(
          builder: (context, commentsListViewState) {
            return NestedScrollView(
              headerSliverBuilder: (c, s) => [
                SliverAppBar(
                  leading: BackButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  backgroundColor: AppColorScheme.cardColor,
                  title: const UIText("Comments", style: UITextStyles.headLine),
                ),
                SliverPinnedHeader(
                  child: ColoredBox(
                    color: Colors.black54,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Builder(
                          builder: (context) {
                            return widget.postuuidOrComment.fold((l) {
                              return BlocProvider.value(
                                value: l,
                                child: const PostCard(),
                              );
                            }, (r) {
                              return AppCommentTile(r);
                            });
                          },
                        ),
                        const Divider(
                          color: AppColorScheme.primaryColor,
                          thickness: 0.3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              body: Stack(
                children: [
                  NotificationListener<ScrollNotification>(
                    onNotification: (scroll) {
                      if (scroll is ScrollEndNotification &&
                          scroll.metrics.extentAfter == 0) {
                        _commentsListViewBloc.add(
                          CommentsListViewEvent.fetchList(
                            commentsListViewState.comments.length,
                          ),
                        );
                      }
                      return true;
                    },
                    child: Scrollbar(
                      child: RefreshIndicator(
                        onRefresh: () async {
                          _commentsListViewBloc.add(
                            const CommentsListViewEvent.refreshList(),
                          );
                        },
                        child: ListView.builder(
                          // reverse: true,
                          controller: _scrollController,
                          padding: const EdgeInsets.only(bottom: 100),
                          physics: const BouncingScrollPhysics(),
                          itemCount: commentsListViewState.comments.length,
                          itemBuilder: (context, index) {
                            return AppCommentTile(
                              commentsListViewState.comments[index],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  if (commentsListViewState.isFetching)
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: LinearProgressIndicator(),
                    ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CommentTextField(() {
                      _scrollController.animateTo(
                        1,
                        duration: kThemeAnimationDuration,
                        curve: Curves.easeIn,
                      );
                    }),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
