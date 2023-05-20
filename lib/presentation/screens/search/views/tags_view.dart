import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/app_search/app_search_bloc.dart';
import 'package:jjogji/presentation/screens/main/discover_screen.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class TagsSearchView extends StatefulWidget {
  const TagsSearchView({
    super.key,
  });

  @override
  State<TagsSearchView> createState() => _TagsSearchViewState();
}

class _TagsSearchViewState extends State<TagsSearchView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<AppSearchBloc, AppSearchState>(
      builder: (context, state) {
        if (state.search.tags.isEmpty) {
          return const Center(
            child: UIText(
              'No Tags Found',
              style: UITextStyles.mainTitle,
            ),
          );
        } else {
          return NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (state.isSearchingTags || state.tagReachedMax) return false;
              if (notification is ScrollEndNotification &&
                  notification.metrics.extentAfter == 0) {
                BlocProvider.of<AppSearchBloc>(context)
                    .add(const AppSearchEvent.loadMoreTags());
              }
              return false;
            },
            child: Column(
              children: [
                Flexible(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return TTagWidget(state.search.tags[index]);
                    },
                    itemCount: state.search.tags.length,
                  ),
                ),
                if (state.isSearchingTags) const LinearProgressIndicator(),
                if (state.tagReachedMax)
                  const Column(
                    children: [
                      Divider(
                        color: Colors.grey,
                        height: 10,
                      ),
                      UIText(
                        'Reached Max',
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
}
