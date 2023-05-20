import 'package:dartz/dartz.dart' show right;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/app_search/app_search_bloc.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_card.dart';

class UsersSearchView extends StatefulWidget {
  const UsersSearchView({
    super.key,
  });

  @override
  State<UsersSearchView> createState() => _UsersSearchViewState();
}

class _UsersSearchViewState extends State<UsersSearchView>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<AppSearchBloc, AppSearchState>(
      builder: (context, state) {
        if (state.search.users.isEmpty) {
          return const Center(
            child: UIText(
              'No Users Found',
              style: UITextStyles.mainTitle,
            ),
          );
        } else {
          return NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (state.isSearchingUsers || state.userReachedMax) return false;
              if (notification is ScrollEndNotification &&
                  notification.metrics.extentAfter == 0) {
                context.read<AppSearchBloc>().add(
                      const AppSearchEvent.loadMoreUsers(),
                    );
              }
              return false;
            },
            child: Column(
              children: [
                Flexible(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final bool isCurrentUser =
                          context.read<AuthBloc>().isCurrentUser(
                                state.search.users[index].uuid,
                              );
                      return BlocProvider(
                        create: (context) => UserBloc(
                          right(state.search.users[index]),
                          isCurrentUser,
                        )..add(const UserEvent.started()),
                        child: const UserListTile(),
                      );
                    },
                    itemCount: state.search.users.length,
                  ),
                ),
                if (state.isSearchingUsers) const LinearProgressIndicator(),
                if (state.userReachedMax)
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
