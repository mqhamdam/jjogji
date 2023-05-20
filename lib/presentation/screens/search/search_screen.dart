import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/app_search/app_search_bloc.dart';
import 'package:jjogji/presentation/screens/search/search_history.dart';
import 'package:jjogji/presentation/screens/search/search_result.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:overlay_support/overlay_support.dart';

class AppSearchScreen extends StatefulWidget {
  const AppSearchScreen({super.key});
  static const String routeName = '/search';
  @override
  State<AppSearchScreen> createState() => _AppSearchScreenState();
}

class _AppSearchScreenState extends State<AppSearchScreen>
    with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();

  final AppSearchBloc _searchBloc = AppSearchBloc();
  final FocusNode _searchFocusNode = FocusNode();
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );

  late final Animation<double> _animation =
      Tween<double>(begin: 0, end: 1).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    ),
  );

  @override
  void initState() {
    _searchBloc.add(const AppSearchEvent.started());
    _searchFocusNode.requestFocus();
    //_searchFocusNode.
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _animationController.dispose();
    _searchFocusNode.dispose();
    _searchBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _searchBloc,
      child: BlocBuilder<AppSearchBloc, AppSearchState>(
        builder: (context, state) {
          final List<String> recentSearch = state.query.isEmpty
              ? state.recentSearches
              : state.recentSearches
                  .where((element) => element.contains(state.query))
                  .toList();
          return Scaffold(
            backgroundColor: AppColorScheme.backgroundColor,
            appBar: AppBar(
              backgroundColor: AppColorScheme.backgroundColor,
              title: Row(
                children: [
                  buildSearchField(),
                ],
              ),
            ),
            body: IndexedStack(
              index: state.searchState == SearchState.recent
                  ? 0
                  : state.searchState == SearchState.result
                      ? 1
                      : 2,
              children: [
                SearchHistory(
                  recentSearch,
                  onSearch: (v) {
                    _searchController.text = v;
                    _searchBloc.add(AppSearchEvent.changeQuery(v));
                    _searchBloc.add(const AppSearchEvent.searchAll());
                  },
                ),
                const SearchResult(),
                const Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Flexible buildSearchField() {
    return Flexible(
      child: Focus(
        onFocusChange: (hasFocus) {
          if (hasFocus) {
            _searchBloc.add(
              const AppSearchEvent.changeSearchState(SearchState.recent),
            );
          } else {
            _searchBloc.add(
              const AppSearchEvent.changeSearchState(SearchState.result),
            );
          }
        },
        child: TextField(
          controller: _searchController,
          onChanged: (value) {
            _searchBloc.add(AppSearchEvent.changeQuery(value));

            if (value.isNotEmpty) {
              _animationController.forward();
            } else {
              _animationController.reverse();
            }
          },
          inputFormatters: [
            FilteringTextInputFormatter.singleLineFormatter,
          ],

          onSubmitted: (va) {
            if (va.isEmpty) {
              return toast('Type something to search');
            } else {
              _searchBloc.add(const AppSearchEvent.searchAll());
            }
          },
          // focusNode: _searchFocusNode,
          // controller: _searchController,
          style: const TextStyle(color: AppColorScheme.textColor),
          maxLength: 1000,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(33),
            ),
            counterText: '',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.teal[100]!,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(23),
              borderSide: const BorderSide(
                color: Colors.tealAccent,
              ),
            ),
            hintText: 'Search User, post, tag... ',
            hintStyle: TextStyle(color: Colors.grey[600]),
            fillColor: AppColorScheme.backgroundColor,
            filled: true,
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 11,
              horizontal: 20,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                _searchController.clear();
                _searchBloc.add(const AppSearchEvent.changeQuery(''));
              },
              child: DualTransitionBuilder(
                animation: _animationController,
                forwardBuilder: (context, animation, child) {
                  return FadeTransition(
                    key: const Key('1'),
                    opacity: _animation,
                    child: RotationTransition(
                      turns: _animation,
                      child: const Icon(
                        FontAwesomeIcons.xmark,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                reverseBuilder: (context, animation, child) {
                  return RotationTransition(
                    turns: _animation,
                    child: const Icon(
                      FontAwesomeIcons.xmark,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
