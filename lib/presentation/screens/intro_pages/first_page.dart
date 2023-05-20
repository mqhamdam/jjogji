import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      color: Colors.transparent,
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Flexible(
            child: Text(
              'Welcome',
              style: UITextStyles.headLine.copyWith(
                fontSize: 50,
                shadows: [
                  const Shadow(
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Flexible(
            child: Text(
              'to Jjogji',
              style: UITextStyles.headLine.copyWith(
                fontSize: 50,
                shadows: [
                  const Shadow(
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          FadeIn(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 58.0),
              child: Card(
                color: Colors.transparent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(103),
                ),
                child: Image.asset(
                  'assets/app_icon.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
