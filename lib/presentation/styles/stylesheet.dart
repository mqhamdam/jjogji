// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColorScheme {
  static const Color backgroundColor = Colors.black;
  static const Color cardColor = Color.fromRGBO(35, 41, 49, 1);
  static const Color primaryColor = Color.fromRGBO(78, 204, 163, 1);
  static const Color errorColor = Colors.red;
  static const Color inactiveColor = Colors.grey;
  static const Color iconColor = Colors.white;
  static const Color whiteColor = Colors.white;
  static const Color textColor = Colors.white;
}

class UITextStyles {
  static const TextStyle mainTitle = TextStyle(
    color: AppColorScheme.textColor,
    fontSize: 18,
  );
  static const TextStyle subtitle = TextStyle(
    color: AppColorScheme.inactiveColor,
    fontSize: 12,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.5,
  );
  static const TextStyle headLine = TextStyle(
    fontSize: 28,
    letterSpacing: 1.0,
    fontWeight: FontWeight.bold,
    color: AppColorScheme.textColor,
  );
}

class UIText extends StatelessWidget {
  const UIText(
    this.data, {
    required this.style,
    this.maxLines = 1,
    this.overflow,
    super.key,
  });
  final TextStyle style;
  final String data;
  final int maxLines;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      softWrap: true,
      maxLines: maxLines,
      overflow: overflow,
      style: GoogleFonts.varelaRound(
        textStyle: style
          ..copyWith(
            color: AppColorScheme.textColor,
          ),
      ),
    );
  }
}

class UIIcon extends StatelessWidget {
  const UIIcon(this.icon, {super.key});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 16,
      color: AppColorScheme.iconColor,
    );
  }
}

class UITextButtonStyles {
  /// Save/Confirm Button Style
  ///
  static ButtonStyle saveButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return AppColorScheme.inactiveColor;
        } else if (states.contains(MaterialState.pressed)) {
          return Colors.black;
        } else {
          return Colors.green;
        }
      },
    ),
    padding: const MaterialStatePropertyAll(
      EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    ),
    shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(33)),
          side: BorderSide(
            color: AppColorScheme.inactiveColor,
          ),
        );
      } else {
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(33)),
          side: BorderSide(
            color: Colors.green,
          ),
        );
      }
    }),
  );

  static ButtonStyle simpleButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return AppColorScheme.primaryColor;
        } else {
          return AppColorScheme.backgroundColor;
        }
      },
    ),
    padding: const MaterialStatePropertyAll(
      EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    ),
    shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(33)),
          side: BorderSide(
            color: AppColorScheme.inactiveColor,
          ),
        );
      } else {
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(33)),
          side: BorderSide(
            color: AppColorScheme.primaryColor,
          ),
        );
      }
    }),
  );
}
