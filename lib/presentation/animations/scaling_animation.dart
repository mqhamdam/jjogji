import 'package:flutter/material.dart';

class ScalingAnimation extends StatefulWidget {
  final Widget child;

  const ScalingAnimation({required this.child, super.key});

  @override
  State<ScalingAnimation> createState() => _ScalingAnimationState();
}

class _ScalingAnimationState extends State<ScalingAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..repeat(reverse: true);
    final curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    // Create the animation tween
    _animation = Tween<double>(begin: 0.8, end: 1.1).animate(curvedAnimation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
