import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PersBotomNavBarItem extends StatelessWidget {
  const PersBotomNavBarItem(this._item, this._isSelected, {super.key});

  final PersistentBottomNavBarItem _item;
  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
      alignment: Alignment.center,
      height: kToolbarHeight,
      child: IconTheme(
        data: IconThemeData(
          size: 26.0,
          color: _isSelected
              ? (_item.activeColorSecondary ?? _item.activeColorPrimary)
              : _item.inactiveColorPrimary ?? _item.activeColorPrimary,
        ),
        child: _item.icon,
      ),
    );
  }
}
