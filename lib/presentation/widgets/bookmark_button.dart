import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class BookmarkButton extends StatefulWidget {
  const BookmarkButton(
    this.isSaved,
    this.onTap, {
    super.key,
  });

  final bool isSaved;
  final VoidCallback onTap;

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationValue;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      value: 0,
      duration: kThemeAnimationDuration,
    )..addListener(() {
        setState(() {});
      });

    _animationValue = CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastLinearToSlowEaseIn,
    );

    _forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _forward() async {
    await _animationController.forward(from: 0.0);
  }

  Future<void> _back() async {
    await _animationController.reverse(from: 1.0);

    widget.onTap();
    // widget.onTap();
  }

  Future<void> _animateRound() async {
    await _back();
    await _forward();
  }

  final Icon _saveFilledIcon = const Icon(
    FontAwesome.bookmark,
    color: Color.fromARGB(255, 0, 230, 8),
  );

  final Icon _saveDefaultIcon = const Icon(
    FontAwesome.bookmark_empty,
    color: AppColorScheme.whiteColor,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        _animateRound();
      },
      child: ScaleTransition(
        alignment: Alignment.topCenter,
        scale: _animationValue,
        child: widget.isSaved ? _saveFilledIcon : _saveDefaultIcon,
      ),
    );
  }
}
