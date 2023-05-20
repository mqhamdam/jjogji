import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:lottie/lottie.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timelines/timelines.dart' as tml;

class AppTimeLine extends StatefulWidget {
  const AppTimeLine(this.points, {super.key});
  final int points;

  @override
  State<AppTimeLine> createState() => _AppTimeLineState();
}

class _AppTimeLineState extends State<AppTimeLine>
    with TickerProviderStateMixin {
  late final int points;
  late final AnimationController _animationController;
  late final Animation<Color?> _colorAnimation;
  late final AnimationController _animationController2;
  late final Animation<Color?> _inActiveColorAnimation;

  final inactiveColor = Colors.black45;
  @override
  void initState() {
    // TODO: implement initState

    points = widget.points;

    // Create the animation controller with a duration of 2 seconds
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    )..repeat(reverse: true);
    _animationController2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 50),)
      ..repeat(reverse: true);

    _colorAnimation =
        ColorTween(begin: Colors.tealAccent, end: Colors.white38).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _inActiveColorAnimation =
        ColorTween(begin: Colors.white60, end: Colors.white10)
            .animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationController2.dispose();
    super.dispose();
  }

  LineStyle activeLine() {
    return LineStyle(color: _colorAnimation.value!, thickness: 2);
  }

  LineStyle inActiveLine() {
    return LineStyle(color: _inActiveColorAnimation.value!, thickness: 2);
  }

  IndicatorStyle activeInd() {
    return IndicatorStyle(
      indicator: tml.Indicator.dot(
        color: AppColorScheme.primaryColor,
        size: 22,
        child: const Icon(
          FontAwesome5.check,
          size: 10,
        ),
      ),
      height: 40,
      drawGap: true,
    );
  }

  IndicatorStyle inActiveInd() => IndicatorStyle(
        indicator: tml.Indicator.outlined(
          color: Colors.white38,
          size: 22,
        ),
        height: 40,
        drawGap: true,
      );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              isFirst: true,
              startChild: const UIText(
                '0',
                style: UITextStyles.mainTitle,
              ),
              endChild: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),
                ),
                color: AppColorScheme.cardColor,
                child: const ColoredBox(
                  color: Colors.black26,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            UIText('Newbie', style: UITextStyles.headLine),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        UIText(
                          """- Up to 5 posts per day\n- Up to 50 Like per day\n- Up to 100 comments per day""",
                          style: UITextStyles.subtitle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              indicatorStyle: points >= 0 ? activeInd() : inActiveInd(),
              afterLineStyle: points >= 0 ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              startChild: const UIText(
                '350',
                style: UITextStyles.subtitle,
              ),
              endChild: _buildSmallCard(20, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              indicatorStyle: points >= 350 ? activeInd() : inActiveInd(),
              beforeLineStyle:
                  points >= (350 - 100) ? activeLine() : inActiveLine(),
              afterLineStyle:
                  points >= (350 + 100) ? activeLine() : inActiveLine(),
            ),
            // Container(
            //   height: 10,
            // ),
            TimelineDivider(
              begin: 0.2,
              end: 0.8,
              color: points >= 700
                  ? _colorAnimation.value!
                  : _inActiveColorAnimation.value!,
            ),
            TimelineTile(
              endChild: const UIText(
                '700',
                style: UITextStyles.subtitle,
              ),
              startChild: _buildSmallCard(20, true),
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              indicatorStyle: points >= 750 ? activeInd() : inActiveInd(),
              beforeLineStyle:
                  points >= (750 - 100) ? activeLine() : inActiveLine(),
              afterLineStyle:
                  points >= (750 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              endChild: const UIText(
                '1000',
                style: UITextStyles.mainTitle,
              ),
              startChild: _buildCard(
                title: 'Newbie 2',
                description: '- Can change Avatar',
                trailing: SizedBox(
                  height: 70,
                  width: 70,
                  child: Lottie.asset('assets/lottie/avatars_multiple.json'),
                ),
              ),
              beforeLineStyle:
                  points >= (1000 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 1000 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (1000 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              endChild: const UIText(
                '1350',
                style: UITextStyles.subtitle,
              ),
              startChild: _buildSmallCard(30, true),
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              beforeLineStyle:
                  points >= (1350 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 1350 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (1350 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineDivider(
              begin: 0.2,
              end: 0.8,
              color: points >= 1500
                  ? _colorAnimation.value!
                  : _inActiveColorAnimation.value!,
            ),
            TimelineTile(
              startChild: const UIText(
                '1650',
                style: UITextStyles.subtitle,
              ),
              endChild: _buildSmallCard(30, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              beforeLineStyle:
                  points >= (1650 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 1650 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (1650 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              startChild: const UIText(
                '2000',
                style: UITextStyles.mainTitle,
              ),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              endChild: _buildCard(
                title: 'Newbie 3',
                description: 'Can change Background Image',
                trailing: Transform.scale(
                  scale: 1.7,
                  child: Lottie.asset(
                    'assets/lottie/sign_board.json',
                    height: 90,
                  ),
                ),
              ),
              beforeLineStyle:
                  points >= (2000 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 2000 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (2000 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              startChild: const UIText(
                '2350',
                style: UITextStyles.subtitle,
              ),
              endChild: _buildSmallCard(30, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              beforeLineStyle:
                  points >= (2350 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 2350 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (2350 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineDivider(
              begin: 0.2,
              end: 0.8,
              color: points >= 2500
                  ? _colorAnimation.value!
                  : _inActiveColorAnimation.value!,
            ),
            TimelineTile(
              endChild: const UIText(
                '2700',
                style: UITextStyles.subtitle,
              ),
              startChild: _buildSmallCard(30, true),
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              beforeLineStyle:
                  points >= (2700 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 2700 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (2700 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              endChild: const UIText(
                '3000',
                style: UITextStyles.mainTitle,
              ),
              startChild: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),
                ),
                color: AppColorScheme.cardColor,
                child: const ColoredBox(
                  color: Colors.black26,
                  child: Padding(
                    padding:
                        EdgeInsets.only(bottom: 18, left: 8, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AnimatedTrigon(),
                            SizedBox(
                              width: 5,
                            ),
                            UIText(
                              'Explorer',
                              style: UITextStyles.headLine,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        UIText(
                          """- Up to 15 posts per day\n- Up to 100 Like per day\n- Up to 150 comments per day""",
                          style: UITextStyles.subtitle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              beforeLineStyle:
                  points >= (3000 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 3000 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (3000 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              endChild: const UIText(
                '3350',
                style: UITextStyles.subtitle,
              ),
              startChild: _buildSmallCard(40, true),
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              beforeLineStyle:
                  points >= (3350 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 3350 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (3350 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineDivider(
              begin: 0.2,
              end: 0.8,
              color: points >= 3500
                  ? _colorAnimation.value!
                  : _inActiveColorAnimation.value!,
            ),
            TimelineTile(
              startChild: const UIText(
                '3650',
                style: UITextStyles.subtitle,
              ),
              endChild: _buildSmallCard(40, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              beforeLineStyle:
                  points >= (3650 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 3650 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (3650 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              startChild: const UIText(
                '4000',
                style: UITextStyles.mainTitle,
              ),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              endChild: _buildCard(
                title: 'Explorer II',
                description: 'Can set unique identificator @',
                trailing: Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Lottie.asset(
                    'assets/lottie/fingerprint.json',
                    height: 70,
                  ),
                ),
              ),
              beforeLineStyle:
                  points >= (4000 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 4000 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (4000 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              startChild: const UIText(
                '4350',
                style: UITextStyles.subtitle,
              ),
              endChild: _buildSmallCard(40, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              beforeLineStyle:
                  points >= (4350 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 4350 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (4350 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineDivider(
              begin: 0.2,
              end: 0.8,
              color: points >= 4500
                  ? _colorAnimation.value!
                  : _inActiveColorAnimation.value!,
            ),
            TimelineTile(
              endChild: const UIText(
                '4700',
                style: UITextStyles.subtitle,
              ),
              startChild: _buildSmallCard(40, true),
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              beforeLineStyle:
                  points >= (4700 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 4700 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (4700 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              endChild: const UIText(
                '5000',
                style: UITextStyles.mainTitle,
              ),
              startChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(33),
                  ),
                  color: AppColorScheme.cardColor,
                  child: const ColoredBox(
                    color: Colors.black26,
                    child: Padding(
                      padding:
                          EdgeInsets.only(bottom: 18, left: 8, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AnimatedPentagon(),
                              SizedBox(
                                width: 5,
                              ),
                              UIText(
                                'Influencer',
                                style: UITextStyles.headLine,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          UIText(
                            """- Up to 50 posts per day\n- Up to 150 Like per day\n- Up to 200 comments per day""",
                            style: UITextStyles.subtitle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              beforeLineStyle:
                  points >= (5000 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 5000 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (5000 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              endChild: const UIText(
                '5350',
                style: UITextStyles.subtitle,
              ),
              startChild: _buildSmallCard(40, true),
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              beforeLineStyle:
                  points >= (5350 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 5350 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (5350 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineDivider(
              begin: 0.2,
              end: 0.8,
              color: points >= 5500
                  ? _colorAnimation.value!
                  : _inActiveColorAnimation.value!,
            ),
            TimelineTile(
              startChild: const UIText(
                '5650',
                style: UITextStyles.subtitle,
              ),
              endChild: _buildSmallCard(50, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              beforeLineStyle:
                  points >= (5650 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 5650 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (5650 + 100) ? activeLine() : inActiveLine(),
            ),
            //FontAwesomeIcons.coins,
            TimelineTile(
              startChild: const UIText(
                '6000',
                style: UITextStyles.mainTitle,
              ),
              endChild: _buildCard(
                title: 'Influencer II',
                description: "- Get a chance for verified user!",
                trailing: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Lottie.asset(
                    'assets/lottie/badge_verified.json',
                    height: 50,
                  ),
                ),
              ),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              beforeLineStyle:
                  points >= (6000 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 6000 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (6000 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              startChild: const UIText(
                '6350',
                style: UITextStyles.subtitle,
              ),
              endChild: _buildSmallCard(50, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              beforeLineStyle:
                  points >= (6350 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 6350 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (6350 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineDivider(
              begin: 0.2,
              end: 0.8,
              color: points >= 6500
                  ? _colorAnimation.value!
                  : _inActiveColorAnimation.value!,
            ),
            TimelineTile(
              endChild: const UIText(
                '6700',
                style: UITextStyles.subtitle,
              ),
              startChild: _buildSmallCard(50, true),
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              beforeLineStyle:
                  points >= (6700 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 6700 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (6700 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              endChild: const UIText(
                '7000',
                style: UITextStyles.mainTitle,
              ),
              startChild: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),
                ),
                color: AppColorScheme.cardColor,
                child: const ColoredBox(
                  color: Colors.black26,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15.0, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AnimatedHeptagon(),
                            SizedBox(
                              width: 5,
                            ),
                            UIText(
                              'Innovator',
                              style: UITextStyles.headLine,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        UIText(
                          """- Up to 100 posts per day\n- Up to 300 Like per day\n- Up to 300 comments per day""",
                          style: UITextStyles.subtitle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              beforeLineStyle:
                  points >= (7000 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 7000 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (7000 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              endChild: const UIText(
                '7350',
                style: UITextStyles.subtitle,
              ),
              startChild: _buildSmallCard(50, true),
              alignment: TimelineAlign.manual,
              lineXY: 0.8,
              beforeLineStyle:
                  points >= (7350 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 7350 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (7350 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineDivider(
              begin: 0.2,
              end: 0.8,
              color: points >= 7500
                  ? _colorAnimation.value!
                  : _inActiveColorAnimation.value!,
            ),
            TimelineTile(
              startChild: const UIText(
                '7650',
                style: UITextStyles.subtitle,
              ),
              endChild: _buildSmallCard(50, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              beforeLineStyle:
                  points >= (7650 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 7650 ? activeInd() : inActiveInd(),
              afterLineStyle:
                  points >= (7650 + 100) ? activeLine() : inActiveLine(),
            ),
            TimelineTile(
              startChild: const UIText(
                '8000',
                style: UITextStyles.mainTitle,
              ),
              endChild: _buildSmallCard(100, false),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              isLast: true,
              beforeLineStyle:
                  points >= (8000 - 100) ? activeLine() : inActiveLine(),
              indicatorStyle: points >= 8000 ? activeInd() : inActiveInd(),
            ),
          ],
        );
      },
    );
  }

  Padding _buildSmallCard(int point, bool ifTrueLeftElseRight) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (ifTrueLeftElseRight) const Spacer(),

          ///
          Card(
            color: AppColorScheme.cardColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(5.0)
                  .add(const EdgeInsets.only(left: 5, right: 5)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset('assets/lottie/spinning_coin.json', height: 20),
                  // Icon(
                  //   FontAwesomeIcons.coins,
                  //   size: 10,
                  //   color: Colors.amber,
                  // ),
                  const SizedBox(
                    width: 5,
                  ),
                  UIText('+$point', style: UITextStyles.subtitle)
                ],
              ),
            ),
          ),
          if (ifTrueLeftElseRight != true) const Spacer()
        ],
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String description,
    Widget? leading,
    Widget? trailing,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
      color: AppColorScheme.cardColor,
      child: ColoredBox(
        color: Colors.black26,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12.0, left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  leading ?? const SizedBox(),
                  const SizedBox(
                    width: 5,
                  ),
                  UIText(title, style: UITextStyles.headLine),
                  const SizedBox(
                    width: 5,
                  ),
                  trailing ?? const SizedBox(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              UIText(description, style: UITextStyles.subtitle),
            ],
          ),
        ),
      ),
    );
  }
}
