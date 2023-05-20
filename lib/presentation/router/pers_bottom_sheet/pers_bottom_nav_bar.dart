import 'package:flutter/material.dart';
import 'package:jjogji/presentation/router/pers_bottom_sheet/pers_bottom_nav_bar_items.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PersBottomNavBar extends StatelessWidget {
  const PersBottomNavBar({
    super.key,
    required this.selectIndex,
    required this.onItemSelected,
    required this.navBarItems,
    required this.onDoubleTap,
  });

  final int selectIndex;
  final List<PersistentBottomNavBarItem> navBarItems;
  final ValueChanged<int> onItemSelected;
  final VoidCallback onDoubleTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: AppColorScheme.backgroundColor,
      ),
      width: double.infinity,
      height: kToolbarHeight,
      child: Row(
        children: navBarItems.map(
          (item) {
            final int index = navBarItems.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onDoubleTap: onDoubleTap,
                onTap: () => onItemSelected(index),
                child: PersBotomNavBarItem(item, selectIndex == index),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
