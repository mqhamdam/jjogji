import 'package:flutter/material.dart';

class CBadge extends StatelessWidget {
  const CBadge(this.child, {super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Badge(
      child: child,
    );
  }
}
