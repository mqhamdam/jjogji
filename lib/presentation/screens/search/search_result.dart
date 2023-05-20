import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/app_search/app_search_bloc.dart';
import 'package:jjogji/presentation/screens/search/views/posts_view.dart';
import 'package:jjogji/presentation/screens/search/views/tags_view.dart';
import 'package:jjogji/presentation/screens/search/views/users_view.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSearchBloc, AppSearchState>(
      builder: (context, state) {
        return const DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: AppColorScheme.backgroundColor,
            appBar: TabBar(
              tabs: [
                Tab(
                  child: UIText(
                    'Users',
                    style: UITextStyles.mainTitle,
                  ),
                ),
                Tab(
                  child: UIText(
                    'Posts',
                    style: UITextStyles.mainTitle,
                  ),
                ),
                Tab(
                  child: UIText(
                    'Tags',
                    style: UITextStyles.mainTitle,
                  ),
                ),
              ],
            ),
            body: TabBarView(
              children: [
                UsersSearchView(),
                PostsSearchView(),
                TagsSearchView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
