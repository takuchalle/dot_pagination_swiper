import 'package:dot_pagination_swiper/dot_pagination_swiper.dart';
import 'package:flutter/material.dart';

@immutable
class SwipeDialog extends StatelessWidget {
  const SwipeDialog({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: SizedBox(
          height: 100,
          width: 100,
          child: DotPaginationSwiper(
            onPageChanged: (i) {
              print("index: $i");
            },
            children: <Widget>[
              Center(child: Text('This')),
              Center(child: Text('is')),
              Center(child: Text('swipe')),
              Center(child: Text('dialog')),
            ],
          ),
        ),
      ),
    );
  }
}

void showSwipeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return SwipeDialog();
    },
  );
}
