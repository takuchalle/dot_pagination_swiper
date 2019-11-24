import 'package:dot_pagination_swiper/dot_pagination_swiper.dart';
import 'package:flutter/material.dart';

@immutable
class SwipePage extends StatelessWidget {
  const SwipePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DotPaginationSwiper.builder(
        itemBuilder: (context, i) {
          return Center(
            child: Text('page $i'),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
