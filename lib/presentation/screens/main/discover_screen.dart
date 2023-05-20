import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/trends/trends_bloc.dart';
import 'package:jjogji/domain/post/post.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/main.dart';
import 'package:jjogji/presentation/router/app_router.dart';
import 'package:jjogji/presentation/screens/main/posts_screen.dart';
import 'package:jjogji/presentation/screens/main/profile_screen.dart';
import 'package:jjogji/presentation/screens/search/search_screen.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/readable_numbers.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:marquee/marquee.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final TrendsBloc _trendsBloc = TrendsBloc();
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    _trendsBloc.add(const TrendsEvent.started());
    _scrollController.addListener(
      () {
        if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent) {
          _trendsBloc.add(const TrendsEvent.fetchNextPosts());
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _trendsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _trendsBloc,
      child: Builder(
        builder: (context) {
          return BlocBuilder<TrendsBloc, TrendsState>(
            builder: (context, state) {
              if (state.isFetching) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Scaffold(
                  backgroundColor: AppColorScheme.backgroundColor,
                  body: CustomScrollView(
                    controller: _scrollController,
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverAppBar(
                        floating: true,
                        backgroundColor: AppColorScheme.cardColor,
                        shadowColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(23),
                          ),
                        ),
                        actions: [
                          OpenContainer(
                            openBuilder: (context, action) {
                              return const AppSearchScreen();
                            },
                            closedBuilder: (context, action) => Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: IconButton(
                                onPressed: action,
                                icon: const Icon(
                                    FontAwesomeIcons.magnifyingGlass,),
                              ),
                            ),
                            closedColor: Colors.transparent,
                          ),
                        ],
                        title: const UIText(
                          "Discover Trends",
                          style: TextStyle(),
                        ),
                      ),
                      /////////

                      MultiSliver(
                        pushPinnedChildren: true,
                        children: [
                          SliverPinnedHeader(
                            child: Container(
                              height: kToolbarHeight + 5,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: kStatusBarHeight,
                                  ),
                                  const UIText(
                                    'Top Users',
                                    style: UITextStyles.headLine,
                                  ),
                                  // SizedBox(
                                  //   height: kStatusBarHeight,
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: build_top_users(state.trendingUsers),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 58.0),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      MultiSliver(
                        pushPinnedChildren: true,
                        children: [
                          SliverPinnedHeader(
                            child: Container(
                              height: kToolbarHeight + 5,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: kStatusBarHeight,
                                  ),
                                  const UIText(
                                    'Trending Tags',
                                    style: UITextStyles.headLine,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (state.trendingTags.isEmpty)
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 100,
                                child: Center(
                                  child: UIText(
                                    'No Tags Found',
                                    style: UITextStyles.mainTitle,
                                  ),
                                ),
                              ),
                            ),
                          build_top_tags(state.trendingTags),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 58.0),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),

                      MultiSliver(
                        pushPinnedChildren: true,
                        children: [
                          SliverPinnedHeader(
                            child: Container(
                              height: kToolbarHeight + 5,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: kStatusBarHeight,
                                  ),
                                  const UIText(
                                    'Trending Posts',
                                    style: UITextStyles.headLine,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (state.trendingPosts.isEmpty)
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 100,
                                child: Center(
                                  child: UIText(
                                    'No Posts Found',
                                    style: UITextStyles.mainTitle,
                                  ),
                                ),
                              ),
                            ),
                          buildPostsListView(
                            state.trendingPosts,
                            state.isFetching,
                          ),
                        ],
                      ),
                      if (state.isFetchingNewPosts)
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColorScheme.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (state.hasReachedMax)
                        SliverToBoxAdapter(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                  color: Colors.grey,
                                ),
                                UIText(
                                  "Nothing More :(",
                                  style: UITextStyles.mainTitle,
                                ),
                              ],
                            ),
                          ),
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

  SliverGrid build_top_tags(List<TrendingTag> trendTags) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 70,
      ),
      itemBuilder: (context, index) {
        return TTagWidget(trendTags[index]);
      },
      itemCount: trendTags.length,
    );
  }

  Widget build_top_users(List<User> users) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10),
          height: 275,
          color: Colors.transparent,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      final bool isCurrentUser = BlocProvider.of<AuthBloc>(context)
                          .isCurrentUser(users[index].uuid);

                      Navigator.of(context).pushNamed(
                        ProfileScreen.routeName,
                        arguments: RouteArguments(
                          {
                            'userUUID': users[index].uuid.getOrCrash(),
                            'isCurrentUser': isCurrentUser
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.all(4.0).copyWith(top: 10, left: 2),
                      child: Card(
                        color: AppColorScheme.cardColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              resolveProfilePic(
                                users[index].profilePic,
                                isLarge: true,
                              ),
                              UIText(
                                users[index].userName.getOrCrash(),
                                style: UITextStyles.mainTitle,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              if (users[index].userID != null)
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: UIText(
                                    '@${users[index].userID!.getOrCrash()}',
                                    style: UITextStyles.subtitle,
                                  ),
                                ),
                              ////
                              UIText(
                                'Reputation ${users[index].reputation}',
                                style: UITextStyles.subtitle,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              UIText(
                                'Followers: ${users[index].followersCount}',
                                style: UITextStyles.subtitle,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              UIText(
                                'Posts: ${users[index].postCount}',
                                style: UITextStyles.subtitle,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: ClipPath(
                      clipper: PolygonClipper(
                        PolygonPathSpecs(
                          sides: index == 0
                              ? 12
                              : index == 1
                                  ? 10
                                  : index == 2
                                      ? 8
                                      : 6,
                          rotate: 0,
                          borderRadiusAngle: 0,
                        ),
                      ),
                      child: CircleAvatar(
                        //background gold color
                        backgroundColor: index == 0
                            ? const Color.fromRGBO(212, 175, 55, 1)
                            : index == 1
                                ? const Color.fromRGBO(229, 228, 226, 1)
                                : index == 2
                                    ? const Color.fromRGBO(205, 127, 50, 1)
                                    : Colors.white,
                        radius: index == 0
                            ? 22
                            : index == 1
                                ? 18
                                : index == 2
                                    ? 16
                                    : 14,
                        child: UIText(
                          "${index + 1}",
                          style: UITextStyles.mainTitle
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class TTagWidget extends StatelessWidget {
  const TTagWidget(
    this.trendingTag, {
    super.key,
  });
  final TrendingTag trendingTag;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColorScheme.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 20,
                      child: Marquee(
                        text: "${trendingTag.tag.getOrCrash()} ",
                        style: UITextStyles.mainTitle,
                        blankSpace: 50,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const UIText(
                        'Post created: ',
                        style: UITextStyles.subtitle,
                      ),
                      ReadableNumbers(trendingTag.postCount)
                    ],
                  ),
                ],
              ),
            ),
            const VerticalDivider(
              width: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Colors.red,
                  size: 15,
                ),
                const SizedBox(height: 5),
                ReadableNumbers(trendingTag.likeCount),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
