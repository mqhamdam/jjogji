import 'package:flutter/material.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/presentation/animations/scaling_animation.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/c_timeline.dart';
import 'package:jjogji/presentation/widgets/readable_numbers.dart';
import 'package:lottie/lottie.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen(this.userBloc, {super.key});

  static const String routeName = '/achievements';
  final UserBloc userBloc;
  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  final ScrollController _scrollController = ScrollController();

  late final UserBloc _userBloc = widget.userBloc;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              backgroundColor: AppColorScheme.backgroundColor,
              pinned: true,
              title: const UIText('Progress', style: UITextStyles.headLine),
              actions: [
                Row(
                  children: [
                    Lottie.asset('assets/lottie/spinning_coin.json',
                        height: 30,),
                    Card(
                      color: AppColorScheme.cardColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33),),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ReadableNumbers(
                            _userBloc.state.user.userPrefs?.points ?? 0,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // SliverPinnedHeader(
            //   child: Card(
            //     color: AppColorScheme.cardColor,
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(33)),
            //     child: ExpansionTile(
            //       title: const UIText(
            //         'Activity',
            //         style: UITextStyles.mainTitle,
            //       ),
            //       children: [
            //         Container(
            //           height: MediaQuery.of(context).size.height / 3.5,
            //           padding: const EdgeInsets.only(bottom: 20),
            //           child: ListView(
            //             physics: const BouncingScrollPhysics(),
            //             children: [
            //               ListTile(
            //                 title: const UIText('Posts created',
            //                     style: UITextStyles.mainTitle),
            //                 subtitle: Row(
            //                   mainAxisSize: MainAxisSize.min,
            //                   children: const [
            //                     UIText('123', style: UITextStyles.subtitle),
            //                     Expanded(
            //                       child: Padding(
            //                         padding:
            //                             EdgeInsets.symmetric(horizontal: 8.0),
            //                         child: LinearProgressIndicator(
            //                           value: 0.4,
            //                           color: Colors.white30,
            //                           backgroundColor: Colors.white12,
            //                           valueColor: AlwaysStoppedAnimation(
            //                               Colors.tealAccent),
            //                         ),
            //                       ),
            //                     ),
            //                     UIText('1223', style: UITextStyles.subtitle),
            //                   ],
            //                 ),
            //               ),
            //               ListTile(
            //                 title: const UIText('Like Earned',
            //                     style: UITextStyles.mainTitle),
            //                 subtitle: Row(
            //                   mainAxisSize: MainAxisSize.min,
            //                   children: const [
            //                     UIText('123', style: UITextStyles.subtitle),
            //                     Expanded(
            //                       child: Padding(
            //                         padding:
            //                             EdgeInsets.symmetric(horizontal: 8.0),
            //                         child: LinearProgressIndicator(
            //                           value: 0.4,
            //                           color: Colors.white30,
            //                           backgroundColor: Colors.white12,
            //                           valueColor: AlwaysStoppedAnimation(
            //                               Colors.tealAccent),
            //                         ),
            //                       ),
            //                     ),
            //                     UIText('1223', style: UITextStyles.subtitle),
            //                   ],
            //                 ),
            //               ),
            //               ListTile(
            //                 title: const UIText('Comments on posts',
            //                     style: UITextStyles.mainTitle),
            //                 subtitle: Row(
            //                   mainAxisSize: MainAxisSize.min,
            //                   children: const [
            //                     UIText('123', style: UITextStyles.subtitle),
            //                     Expanded(
            //                       child: Padding(
            //                         padding:
            //                             EdgeInsets.symmetric(horizontal: 8.0),
            //                         child: LinearProgressIndicator(
            //                           value: 0.4,
            //                           color: Colors.white30,
            //                           backgroundColor: Colors.white12,
            //                           valueColor: AlwaysStoppedAnimation(
            //                               Colors.tealAccent),
            //                         ),
            //                       ),
            //                     ),
            //                     UIText('1223', style: UITextStyles.subtitle),
            //                   ],
            //                 ),
            //               ),
            //               ListTile(
            //                 title: const UIText('Logged in',
            //                     style: UITextStyles.mainTitle),
            //                 subtitle: Row(
            //                   mainAxisSize: MainAxisSize.min,
            //                   children: const [
            //                     UIText('123', style: UITextStyles.subtitle),
            //                     Expanded(
            //                       child: Padding(
            //                         padding:
            //                             EdgeInsets.symmetric(horizontal: 8.0),
            //                         child: LinearProgressIndicator(
            //                           value: 0.3,
            //                           color: Colors.white30,
            //                           backgroundColor: Colors.white12,
            //                           valueColor: AlwaysStoppedAnimation(
            //                               Colors.tealAccent),
            //                         ),
            //                       ),
            //                     ),
            //                     UIText('1223', style: UITextStyles.subtitle),
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            SliverPinnedHeader(
              child: Card(
                color: AppColorScheme.cardColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),),
                child: ExpansionTile(
                  iconColor: AppColorScheme.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33),),
                  title: const UIText('Achievements',
                      style: UITextStyles.mainTitle,),
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3.5,
                      child: GridView(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 15,
                        ),
                        shrinkWrap: true,
                        children: [
                          GridTile(
                            child: Lottie.asset(
                                'assets/images/badge/unachieved.json',
                                fit: BoxFit.fill,),
                          ),
                          ScalingAnimation(
                            child: Image.asset(
                              'assets/images/badge/first_step.png',
                            ),
                          ),
                          GridTile(
                            child: ScalingAnimation(
                              child: Image.asset(
                                'assets/images/badge/ambassador.png',
                              ),
                            ),
                          ),
                          GridTile(
                            child: ScalingAnimation(
                              child: Image.asset(
                                'assets/images/badge/attractive.png',
                              ),
                            ),
                          ),
                          GridTile(
                            child: ScalingAnimation(
                              child: Image.asset(
                                'assets/images/badge/community_builder.png',
                              ),
                            ),
                          ),
                          GridTile(
                            child: ScalingAnimation(
                              child: Image.asset(
                                'assets/images/badge/content_creator.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: AppTimeLine(_userBloc.state.user.reputation),
            ),
          ],
        ),
      ),
    );
  }
}
