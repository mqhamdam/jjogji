import 'package:flutter/material.dart';

class Disableable extends StatefulWidget {
  const Disableable({
    required this.child,
    required this.disable,
    this.disabledWidget,
    super.key,
  });
  final Widget child;

  /// widget will be shown when disable is true
  final Widget? disabledWidget;
  final bool disable;
  @override
  State<Disableable> createState() => _DisableableState();
}

class _DisableableState extends State<Disableable> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: kThemeAnimationDuration,
          child: widget.child,
        ),
        if (widget.disable)
          Positioned.fill(
            child: AnimatedContainer(
              duration: kThemeAnimationDuration,
              decoration: BoxDecoration(
                color: widget.disable
                    ? const Color.fromARGB(255, 22, 22, 22).withOpacity(0.8)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: widget.disabledWidget,
            ),
          ),
      ],
    );
  }
}
