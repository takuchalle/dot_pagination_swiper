import 'package:flutter/material.dart';

import 'dot_pagination.dart';

@immutable
class DotPaginationSwiper extends StatefulWidget {
  DotPaginationSwiper({
    Key key,
    List<Widget> children = const <Widget>[],
  })  : childrenDelegate = SliverChildListDelegate(children),
        itemCount = children.length,
        super(key: key);

  DotPaginationSwiper.builder({
    Key key,
    @required IndexedWidgetBuilder itemBuilder,
    int itemCount,
  })  : childrenDelegate =
            SliverChildBuilderDelegate(itemBuilder, childCount: itemCount),
        itemCount = itemCount,
        super(key: key);

  final SliverChildDelegate childrenDelegate;
  final int itemCount;

  @override
  _DotPaginationSwiperState createState() => _DotPaginationSwiperState();
}

class _DotPaginationSwiperState extends State<DotPaginationSwiper> {
  int _index;

  @override
  void initState() {
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView.custom(
            childrenDelegate: widget.childrenDelegate,
            onPageChanged: (i) {
              setState(() {
                _index = i;
              });
            }),
        Align(
          child: DotPagination(
            itemCount: widget.itemCount,
            activeIndex: _index,
          ),
          alignment: Alignment.bottomCenter,
        ),
      ],
    );
  }
}
