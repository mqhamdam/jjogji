import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/Views/posts_view/posts_view_bloc.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/presentation/screens/main/posts_screen.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class SavedPostsScreen extends StatefulWidget {
  const SavedPostsScreen({super.key});
  static const routeName = '/saved';
  @override
  State<SavedPostsScreen> createState() => _SavedPostsScreenState();
}

class _SavedPostsScreenState extends State<SavedPostsScreen> {
  late final PostsViewBloc _postsViewBloc;

  @override
  void initState() {
    _postsViewBloc = PostsViewBloc(const PostFilter(onlySaved: true))
      ..add(
        const PostsViewEvent.started(),
      )
      ..add(
        const PostsViewEvent.fetchPosts(0),
      );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _postsViewBloc,
      child: BlocBuilder<PostsViewBloc, PostsViewState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColorScheme.backgroundColor,
            body: NotificationListener<ScrollNotification>(
              onNotification: (scroll) {
                if (scroll.metrics.pixels == scroll.metrics.maxScrollExtent) {
                  _postsViewBloc.add(const PostsViewEvent.fetchNextPosts());
                }
                return true;
              },
              child: RefreshIndicator(
                onRefresh: () async {
                  _postsViewBloc.add(const PostsViewEvent.refreshList());
                },
                child: CustomScrollView(
                  slivers: [
                    const SliverAppBar(
                      backgroundColor: AppColorScheme.cardColor,
                      title:
                          UIText("Saved Posts", style: UITextStyles.headLine),
                    ),
                    buildPostsListView(
                      _postsViewBloc.state.posts,
                      _postsViewBloc.state.isFetching,
                    ),
                    //
                    if (state.fetchingNext)
                      const SliverToBoxAdapter(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    if (state.hasReachedMax)
                      const SliverToBoxAdapter(
                        child: Center(
                          child: Column(
                            children: [
                              Divider(
                                color: Colors.white,
                              ),
                              UIText(
                                'No more posts to show',
                                style: UITextStyles.mainTitle,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
