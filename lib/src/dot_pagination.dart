import 'package:flutter/material.dart';

import 'color_dot.dart';

@immutable
class DotPagination extends StatelessWidget {
  const DotPagination(
      {Key key, @required this.itemCount, @required this.activeIndex})
      : assert(itemCount != null),
        assert(activeIndex != null),
        assert(activeIndex >= 0),
        assert(activeIndex < itemCount),
        super(key: key);

  final int itemCount;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    final inactiveDot = ColorDot(
      color: Theme.of(context).unselectedWidgetColor,
    );
    final activeDot = ColorDot(
      color: Theme.of(context).selectedRowColor,
    );

    final list = List<ColorDot>.generate(
      itemCount,
      (index) => (index == activeIndex) ? activeDot : inactiveDot,
    );

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: list,
      ),
    );
  }
}
