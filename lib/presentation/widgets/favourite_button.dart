import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton(this.isFavourite, {required this.onTap, super.key});
  final bool isFavourite;
  final VoidCallback onTap;

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  final favButtonStyle = const ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.black),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(53)),
        side: BorderSide(
          color: Colors.yellow,
        ),
      ),
    ),
  );
  final defaultButtonStyle = const ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.black),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(53)),
        side: BorderSide(
          color: Colors.white,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTap,
      style: widget.isFavourite ? favButtonStyle : defaultButtonStyle,
      child: Padding(
        padding: const EdgeInsets.only(right: 3.0),
        child: Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: widget.isFavourite ? Colors.yellow : Colors.white,
        ),
      ),
    );
  }
}
