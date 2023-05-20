import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class ReadableNumbers extends StatelessWidget {
  const ReadableNumbers(this.num, {super.key});
  final int num;
  @override
  Widget build(BuildContext context) {
    return UIText(
      num < 10000 ? '$num' : NumberFormat.compact().format(num),
      style: UITextStyles.subtitle,
    );
  }
}
