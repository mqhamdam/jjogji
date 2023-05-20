import 'package:flutter/material.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

@immutable
class FollowButton extends StatefulWidget {
  const FollowButton(
    this.isFollowing,
    this.isFetching, {
    required this.onButtonTap,
    super.key,
  });
  final bool isFollowing;
  final bool isFetching;
  final VoidCallback onButtonTap;
  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    if (widget.isFetching != true) {
      if (widget.isFollowing) {
        return TextButton(
          onPressed: widget.onButtonTap,
          style: UITextButtonStyles.simpleButton,
          child: const UIText(
            "Unfollow",
            style: TextStyle(
              color: AppColorScheme.textColor,
            ),
          ),
        );
      } else {
        return TextButton(
          onPressed: widget.onButtonTap,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.green),
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(33)),
              ),
            ),
          ),
          child: const UIText(
            "Follow",
            style: TextStyle(
              color: AppColorScheme.textColor,
            ),
          ),
        );
      }
    } else {
      return Container();
    }
  }
}
