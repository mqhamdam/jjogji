import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/Views/posts_view/posts_view_bloc.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/enums.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/presentation/router/app_router.dart';
import 'package:jjogji/presentation/router/route_names.dart';
import 'package:jjogji/presentation/screens/achievements_screen.dart';
import 'package:jjogji/presentation/screens/edit_user_data_screen.dart';
import 'package:jjogji/presentation/screens/main/posts_screen.dart';
import 'package:jjogji/presentation/screens/settings/widgets/linked_contact_tile.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/favourite_button.dart';
import 'package:jjogji/presentation/widgets/readable_numbers.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:jjogji/presentation/widgets/user_modal_menu.dart';
import 'package:overlay_support/overlay_support.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen(this.userId, this.isCurrentUser, {super.key});
  static const String routeName = "/profile"; //

  final String userId;
  final bool isCurrentUser;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final UserBloc _userBloc;
  late final PostsViewBloc _postsViewBloc;

  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    _postsViewBloc = PostsViewBloc(
      PostFilter(
        authoruuid: UUID.fromDB(widget.userId),
      ),
    )
      ..add(const PostsViewEvent.started())
      ..add(const PostsViewEvent.fetchPosts(0));

    _userBloc =
        UserBloc(dartz.left(UUID.fromDB(widget.userId)), widget.isCurrentUser)
          ..add(
            const UserEvent.started(),
          );

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
    _userBloc.close();
    _postsViewBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _userBloc),
        BlocProvider.value(value: _postsViewBloc),
      ],
      child: BlocBuilder<PostsViewBloc, PostsViewState>(
        builder: (context, postsViewState) {
          return BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state.isFetching || (state.user.uuid.getOrElse('').isEmpty)) {
                return const ColoredBox(
                  color: Colors.white,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return Scaffold(
                  backgroundColor: AppColorScheme.backgroundColor,
                  body: CustomScrollView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    slivers: [
                      SliverAppBar.medium(
                        stretch: true,
                        expandedHeight: 150,
                        backgroundColor: Colors.black12,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(33),
                          ),
                        ),
                        onStretchTrigger: () async {
                          _postsViewBloc
                              .add(const PostsViewEvent.refreshList());
                          _userBloc.add(UserEvent.getData(state.user.uuid));
                          return;
                        },
                        flexibleSpace: FlexibleSpaceBar(
                          background: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(33),
                            ),
                            child: state.user.backgroundImageUrl != null
                                ? Image.network(
                                    state.user.backgroundImageUrl!.getOrCrash(),
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'assets/images/background/01jpg.jpg',
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  resolveProfilePic(
                                    state.user.profilePic,
                                    isLarge: true,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: BlocProvider.of<AuthBloc>(context)
                                            .isCurrentUser(
                                      _userBloc.state.user.uuid,
                                    )
                                        ? () {
                                            final args = RouteArguments(
                                              {'userBloc': _userBloc},
                                            );
                                            Navigator.of(context).pushNamed(
                                              AchievementsScreen.routeName,
                                              arguments: args,
                                            );
                                          }
                                        : () {
                                            toast(
                                                'This page is available only for owner of this profile',);
                                          },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(33),
                                      ),
                                      color: AppColorScheme.cardColor,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              FontAwesomeIcons.crown,
                                              color: Colors.amber,
                                              size: 14,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            ReadableNumbers(
                                              state.user.reputation,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Builder(
                                    builder: (context) {
                                      //? if current user == show settings button;

                                      if (widget.isCurrentUser) {
                                        return TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                              context,
                                              EditUserDataScreen.routeName,
                                            );
                                          },
                                          style:
                                              UITextButtonStyles.simpleButton,
                                          child: const UIText(
                                            "Edit",
                                            style: TextStyle(
                                              color: AppColorScheme.textColor,
                                            ),
                                          ),
                                        );
                                      } else {
                                        //return Container();
                                        return Row(
                                          children: [
                                            // FollowButton(
                                            //   state.userRelation.follow,
                                            //   state.subscriptionInProcess,
                                            //   onButtonTap: () {
                                            //     _userBloc.add(const UserEvent
                                            //         .subscribeButtonPressed());
                                            //   },
                                            // ),
                                            // const SizedBox(
                                            //   width: 20,
                                            // ),
                                            GestureDetector(
                                              onTap: () {
                                                showModalBottomSheet(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  isScrollControlled: true,
                                                  builder: (_) {
                                                    return UserModalMenu(
                                                      _userBloc,
                                                    );
                                                  },
                                                );
                                              },
                                              child: const UIIcon(
                                                FontAwesome.ellipsis,
                                              ),
                                            ),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  UIText(
                                    state.user.userName.getOrCrash(),
                                    style: UITextStyles.mainTitle,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  if (state.user.verificationStatus ==
                                      VerificationStatus.verified)
                                    const Icon(
                                      Icons.verified_rounded,
                                      size: 25,
                                      color: AppColorScheme.primaryColor,
                                    ),
                                ],
                              ),
                              UIText(
                                "@${state.user.userID?.getOrCrash() ?? ("user ID not set")}",
                                style: UITextStyles.subtitle,
                              ),
                              const Divider(
                                color: AppColorScheme.inactiveColor,
                                thickness: 0.2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const VerticalDivider(),
                                  Column(
                                    children: [
                                      const UIText(
                                        "Posts",
                                        style: TextStyle(
                                          color: AppColorScheme.textColor,
                                        ),
                                      ),
                                      ReadableNumbers(
                                        state.user.postCount,
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(),
                                  GestureDetector(
                                    onTap: () {
                                      final args = RouteArguments({
                                        'uuid': state.user.uuid.getOrCrash(),
                                      });
                                      Navigator.of(context).pushNamed(
                                        RouteNames.followers,
                                        arguments: args,
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        const UIText(
                                          "Readers",
                                          style: TextStyle(
                                            color: AppColorScheme.textColor,
                                          ),
                                        ),
                                        ReadableNumbers(
                                          state.user.followersCount,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const VerticalDivider(),
                                  GestureDetector(
                                    onTap: () {
                                      final args = RouteArguments({
                                        'uuid': state.user.uuid.getOrCrash(),
                                      });
                                      Navigator.of(context).pushNamed(
                                        RouteNames.following,
                                        arguments: args,
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        const UIText(
                                          "Reading",
                                          style: TextStyle(
                                            color: AppColorScheme.textColor,
                                          ),
                                        ),
                                        ReadableNumbers(
                                          state.user.followingCount,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const VerticalDivider(),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              if (!widget.isCurrentUser)
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(33),
                                            ),
                                            context: context,
                                            builder: (context) {
                                              return UserLinksModal(
                                                linkedContacts:
                                                    state.user.linkedContacts,
                                              );
                                            },
                                          );
                                        },
                                        style: UITextButtonStyles.simpleButton,
                                        child: const UIText(
                                          "Links",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    FavouriteButton(
                                      state.userRelation.bestie,
                                      onTap: () {
                                        _userBloc.add(
                                          const UserEvent
                                              .bestiesButtonPressed(),
                                        );
                                      },
                                    ),
                                  ],
                                )
                            ],
                          ),
                        ),
                      ),
                      buildPostsListView(
                        postsViewState.posts,
                        postsViewState.isFetching,
                      ),
                      SliverToBoxAdapter(
                        child: postsViewState.isFetching
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Container(),
                      )
                    ],
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }

  Widget UserLinksModal({required List<LinkedContact> linkedContacts}) {
    return Column(
      children: [
        ...linkedContacts.map(
          (e) => LinkedContactTile(
            e,
            onDelete: () {},
            onEdit: () {},
            editMode: false,
          ),
        )
      ],
    );
  }
}
