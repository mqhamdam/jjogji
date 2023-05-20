import 'package:flutter/widgets.dart';

SliverList buildSliverList(Widget widget, int childCount) {
  return SliverList(
    delegate:
        SliverChildBuilderDelegate(childCount: childCount, (context, index) {
      return widget;
    },),
  );
}
