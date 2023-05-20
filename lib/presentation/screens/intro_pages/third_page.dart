import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/presentation/animations/scaling_animation.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SlideInDown(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                const Icon(
                  FontAwesomeIcons.award,
                  size: 120,
                  color: Colors.amberAccent,
                ),
                UIText(
                  'Reputation',
                  style: UITextStyles.headLine.copyWith(fontSize: 50),
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  'Earn Reputation and unlock:',
                  style: UITextStyles.headLine,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            TimelineTile(
              indicatorStyle: IndicatorStyle(
                width: 40,
                height: 40,
                indicator: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    border: Border.all(color: Colors.blueAccent, width: 2),
                  ),
                ),
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(8),
              ),
              isFirst: true,
              afterLineStyle: const LineStyle(
                color: Colors.white,
                thickness: 2,
              ),
              endChild: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),
                ),
                color: Colors.black45,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          UIText('Avatar shape & style',
                              style: UITextStyles.headLine,),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(1),
                        child: Wrap(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 100, child: AnimatedTrigon()),
                            SizedBox(height: 100, child: AnimatedPentagon()),
                            SizedBox(height: 100, child: AnimatedHeptagon()),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            TimelineTile(
              indicatorStyle: IndicatorStyle(
                width: 40,
                height: 40,
                indicator: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    border: Border.all(color: Colors.blueAccent, width: 2),
                  ),
                ),
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(8),
              ),
              beforeLineStyle: const LineStyle(
                color: Colors.white,
                thickness: 2,
              ),
              isLast: true,
              endChild: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),
                ),
                color: Colors.black45,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          UIText('Badges & Titles',
                              style: UITextStyles.headLine,),
                        ],
                      ),
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
                            // GridTile(
                            //   child: Lottie.asset(
                            //     'assets/images/badge/unachieved.json',
                            //     fit: BoxFit.fill,
                            //   ),
                            // ),
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
            ),
            const Text('And more...', style: UITextStyles.headLine),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
