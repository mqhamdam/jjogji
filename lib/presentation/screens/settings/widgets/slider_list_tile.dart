import 'package:flutter/material.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

class SliderListTile extends StatelessWidget {
  const SliderListTile({
    required this.min,
    required this.max,
    required this.title,
    required this.value,
    required this.onChanged,
    super.key,
  });
  final String title;
  final double max;
  final double min;
  final double value;
  final void Function(double i) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      title: UIText(title, style: UITextStyles.mainTitle),
      subtitle: Row(
        children: [
          UIText('$min', style: UITextStyles.subtitle),
          Expanded(
            child: Slider(
              label: '$value',
              //ivisions: max.toInt(),
              min: min,
              max: max,
              value: value,
              onChanged: onChanged,
            ),
          ),
          UIText('$max', style: UITextStyles.subtitle),
        ],
      ),
    );
  }
}
