import 'package:dartz/dartz.dart' show left;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/app_search/app_search_bloc.dart';
import 'package:jjogji/application/post/post_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/post_card.dart';

class PostsSearchView extends StatefulWidget {
  const PostsSearchView({
    super.key,
  });

  @override
  State<PostsSearchView> createState() => _PostsSearchViewState();
}

class _PostsSearchViewState extends State<PostsSearchView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<AppSearchBloc, AppSearchState>(
      builder: (context, state) {
        if (state.search.posts.isEmpty) {
          return const Center(
            child: UIText(
              'No Posts Found',
              style: UITextStyles.mainTitle,
            ),
          );
        } else {
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollNotificaiton) {
              if (state.isSearchingPosts || state.postReachedMax) return false;
              if (scrollNotificaiton is ScrollEndNotification &&
                  scrollNotificaiton.metrics.extentAfter == 0) {
                context
                    .read<AppSearchBloc>()
                    .add(const AppSearchEvent.loadMorePosts());
              }
              return false;
            },
            child: Column(
              children: [
                Flexible(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return BlocProvider(
                        create: (context) =>
                            PostBloc(left(state.search.posts[index]))
                              ..add(
                                const PostEvent.init(),
                              ),
                        child: const PostCard(),
                      );
                    },
                    itemCount: state.search.posts.length,
                  ),
                ),
                if (state.isSearchingPosts) const LinearProgressIndicator(),
                if (state.postReachedMax)
                  const Column(
                    children: [
                      Divider(
                        color: Colors.grey,
                        height: 10,
                      ),
                      UIText(
                        'No more posts',
                        style: UITextStyles.mainTitle,
                      ),
                    ],
                  ),
              ],
            ),
          );
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
