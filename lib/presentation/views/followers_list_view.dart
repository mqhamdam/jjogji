import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/Views/users_list_view/users_list_view_bloc.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_card.dart';

enum UsersListViewType { followers, following, likes, users }

class UsersListView extends StatefulWidget {
  /// must be a function that returns a Future<List<User>>
  /// get function from the UserRepo or PostRepo singleton
  const UsersListView(this.title, this._uuid, this.fetchFunction, {super.key});

  final String title;
  final Function(int int, UUID uuid) fetchFunction;
  final UUID _uuid;
  @override
  State<UsersListView> createState() => _UsersListViewState();
}

class _UsersListViewState extends State<UsersListView> {
  late final UsersListViewBloc _usersListViewBloc;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    _usersListViewBloc = UsersListViewBloc(widget._uuid, widget.fetchFunction)
      ..add(
        const UsersListViewEvent.fetchUsers(0),
      );
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        _usersListViewBloc.add(const UsersListViewEvent.fetchNextUsers());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _usersListViewBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _usersListViewBloc,
      child: Scaffold(
        backgroundColor: AppColorScheme.backgroundColor,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
          backgroundColor: AppColorScheme.cardColor,
          title: UIText(widget.title, style: UITextStyles.headLine),
        ),
        body: BlocBuilder<UsersListViewBloc, UsersListViewState>(
          builder: (context, state) {
            if (state.isFetching) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.users.isEmpty && (state.isFetching == false)) {
              return const Center(
                child: UIText(
                  "List is empty :(",
                  style: UITextStyles.headLine,
                ),
              );
            } else {
              if (state.users.first.uuid.isValid() == false) {
                return const UIText('data', style: UITextStyles.mainTitle);
              } else {
                return RefreshIndicator(
                  onRefresh: () async {
                    _usersListViewBloc.add(
                      const UsersListViewEvent.refreshList(),
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          controller: _scrollController,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final isCurrentUser = UUID
                                    .fromDB(
                                      BlocProvider.of<AuthBloc>(context)
                                          .userCredentials!
                                          .uid,
                                    )
                                    .getOrCrash() ==
                                state.users[index].uuid.getOrCrash();

                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33),
                              ),
                              color: AppColorScheme.cardColor,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 13),
                                child: BlocProvider(
                                  create: (context) => UserBloc(
                                    dartz.right(state.users[index]),
                                    isCurrentUser,
                                  )..add(const UserEvent.started()),
                                  child: const UserListTile(),
                                ),
                              ),
                            );
                          },
                          itemCount: state.users.length,
                        ),
                      ),
                      //
                      if (state.reachedMax)
                        const UIText(
                          'Reached Max',
                          style: UITextStyles.mainTitle,
                        ),
                      if (state.isFetchingNext)
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                    ],
                  ),
                );
              }
            }
          },
        ),
      ),
    );
  }
}
