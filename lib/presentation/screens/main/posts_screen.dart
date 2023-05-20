import 'package:dartz/dartz.dart' show left;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/Views/posts_view/posts_view_bloc.dart';
import 'package:jjogji/application/app_notifications/app_notifications_bloc.dart';
import 'package:jjogji/application/post/post_bloc.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/presentation/screens/notifications/notifications_screen.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/post_card.dart';
import 'package:overlay_support/overlay_support.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final PostsViewBloc _postsViewBloc =
      PostsViewBloc(const PostFilter(onlyFollowing: true));

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    _postsViewBloc.add(const PostsViewEvent.started());
    _postsViewBloc.add(const PostsViewEvent.fetchPosts(0));
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        _postsViewBloc.add(const PostsViewEvent.fetchNextPosts());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _postsViewBloc.close();
    super.dispose();
  }

  late OverlaySupportEntry ss;
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _postsViewBloc,
      child: BlocBuilder<PostsViewBloc, PostsViewState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColorScheme.backgroundColor,
            body: RefreshIndicator(
              onRefresh: () async {
                _postsViewBloc.add(const PostsViewEvent.refreshList());
              },
              child: CustomScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverAppBar(
                    floating: true,
                    backgroundColor: Colors.black87,
                    shadowColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(23),
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: IconButton(
                          onPressed: () => Navigator.of(context)
                              .pushNamed(NotificationScreen.routeName),
                          icon: BlocBuilder<AppNotificationsBloc,
                              AppNotificationsState>(
                            builder: (context, state) {
                              return Badge.count(
                                isLabelVisible: state.notReadCount > 0,
                                count: state.notReadCount,
                                child: const Icon(FontAwesomeIcons.bell),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                    title: const UIText(
                      "Publications",
                      style: UITextStyles.headLine,
                    ),
                  ),
                  if (state.posts.isEmpty)
                    const SliverFillRemaining(
                      child: Center(
                        child: UIText(
                          "No posts",
                          style: UITextStyles.headLine,
                        ),
                      ),
                    ),
                  buildPostsListView(state.posts, state.isFetching),
                  SliverToBoxAdapter(
                    child: state.isFetching
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container(),
                  )
                ],
              ),
            ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () async {
            //     showSimpleNotification(Text('data'));
            //     // showCupertinoModalPopup(
            //     //   filter: ImageFilter.blur(
            //     //       sigmaX: 5, sigmaY: 5, tileMode: TileMode.decal),
            //     //   context: context,
            //     //   builder: (context) {
            //     //     return const CreatePostScreen();
            //     //   },
            //     // );
            //   },
            //   backgroundColor: AppColorScheme.primaryColor,
            //   child: const Icon(
            //     FontAwesomeIcons.pen,
            //     color: AppColorScheme.cardColor,
            //     size: 18,
            //   ),
            // ),
          );
        },
      ),
    );
  }
}

SliverList buildPostsListView(List<Post> list, bool isFetching) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        return Column(
          children: [
            BlocProvider(
              create: (context) =>
                  PostBloc(left(list[index]))..add(const PostEvent.init()),
              child: const PostCard(),
            ),
          ],
        );
      },
      childCount: list.length,
    ),
  );
}
