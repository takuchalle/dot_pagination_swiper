import 'package:flutter/material.dart';

import 'dot_pagination.dart';

@immutable
class DotPaginationSwiper extends StatefulWidget {
  const DotPaginationSwiper({
    Key key,
    @required this.children,
  })  : assert(children != null),
        super(key: key);

  final List<Widget> children;

  @override
  _DotPaginationSwiperState createState() => _DotPaginationSwiperState();
}

class _DotPaginationSwiperState extends State<DotPaginationSwiper> {
  int _itemCount;
  int _index;

  @override
  void initState() {
    _itemCount = widget.children.length;
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          children: widget.children,
          onPageChanged: (i) {
            setState(() {
              _index = i;
            });
          },
        ),
        Align(
          child: DotPagination(
            itemCount: _itemCount,
            activeIndex: _index,
          ),
          alignment: Alignment.bottomCenter,
        ),
      ],
    );
  }
}
