import 'package:flutter/material.dart';

class OverlayWidget extends StatefulWidget {
  const OverlayWidget(
      {required this.backgroundScreen, required this.child, super.key,});
  final Widget backgroundScreen;
  final Widget child;
  @override
  State<OverlayWidget> createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends State<OverlayWidget> {
  Offset _offset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.backgroundScreen,
        Positioned(
          left: _offset.dx,
          top: _offset.dy,
          child: GestureDetector(
            onPanUpdate: (d) =>
                setState(() => _offset += Offset(d.delta.dx, d.delta.dy)),
            child: widget.child,
          ),
        ),
      ],
    );
  }
}
