import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/app_search/app_search_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class SearchHistory extends StatelessWidget {
  const SearchHistory(this.searchHistory, {required this.onSearch, super.key});
  final List<String> searchHistory;
  final ValueChanged<String> onSearch;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<AppSearchBloc>(context).add(
              const AppSearchEvent.clearRecentSearches(''),
            );
          },
          child: Card(
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(33),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 30),
              child: UIText(
                'clear all',
                style: UITextStyles.mainTitle,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: ListTile.divideTiles(
              color: Colors.blueGrey,
              tiles: [
                ...searchHistory.map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => onSearch(e),
                            child: UIText(
                              e,
                              style: UITextStyles.mainTitle,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () =>
                              BlocProvider.of<AppSearchBloc>(context).add(
                            AppSearchEvent.clearRecentSearches(e),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.xmark,
                            color: AppColorScheme.iconColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ).toList(),
          ),
        ),
      ],
    );
  }
}
