import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jjogji/presentation/screens/intro_pages/first_page.dart';
import 'package:jjogji/presentation/screens/intro_pages/second_page.dart';
import 'package:jjogji/presentation/screens/intro_pages/third_page.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Gradient> _animation;

  bool? isFirstOpen;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _controller.addListener(() {
      setState(() {});
    });
    checkFirstOpen();
    _animation = LinearGradientTween(
      begin: const LinearGradient(
        colors: [
          Color.fromRGBO(101, 45, 144, 1.0),
          Color.fromRGBO(163, 89, 204, 1.0),
          Color.fromRGBO(119, 56, 152, 1.0)
        ],
        stops: [0.0, 0.5, 1.0],
        transform: GradientRotation(5),
        begin: Alignment.topLeft,
      ),
      end: const LinearGradient(
        colors: [
          Color.fromRGBO(1, 87, 155, 1.0),
          Color.fromRGBO(0, 168, 232, 1.0),
          Color.fromRGBO(0, 119, 168, 1.0)
        ],
        stops: [0.0, 0.5, 1.0],
        end: Alignment.bottomRight,
        transform: GradientRotation(5),
      ),
    ).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<bool> checkFirstOpen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isFirstOpen = prefs.getBool('isFirstOpen') ?? true;
    if (isFirstOpen == true) {
      await prefs.setBool('isFirstOpen', false);
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    if (isFirstOpen == null) {
      return Container();
    } else if (isFirstOpen == false) {
      return widget.child;
    } else {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: _animation.value,
        ),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.transparent,
          rawPages: const [
            // welcome message
            FirstPage(),
            // User Features
            SecondPage(),
            // reputation achievements
            ThirdPage(),
          ],
          done: const UIText(
            'Done',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          next: const UIText(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          showBackButton: true,
          back: const UIText('Back', style: UITextStyles.mainTitle),
          onDone: () {
            setState(() {
              isFirstOpen = true;
              checkFirstOpen();
            });
          },
        ),
      );
    }
  }
}
