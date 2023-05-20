import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class LikeButton extends StatefulWidget {
  const LikeButton(
    this.isLiked, {
    required this.onTap,
    super.key,
  });
  final bool isLiked;
  final VoidCallback onTap;
  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton>
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
  }

  Future<void> _animateRound() async {
    await _back();
    await _forward();
  }

  final Icon _likeFilledBtn = const Icon(
    FontAwesomeIcons.solidHeart,
    color: Colors.red,
  );

  final Icon _likeDfltBtn = const Icon(
    FontAwesomeIcons.heart,
    color: AppColorScheme.whiteColor,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animateRound();
      },
      child: ScaleTransition(
        scale: _animationValue,
        child: widget.isLiked ? _likeFilledBtn : _likeDfltBtn,
      ),
    );
  }
}
