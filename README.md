# dot_pagination_swiper

[![Actions Status](https://github.com/takuyaohashi/dot_pagination_swiper/workflows/test/badge.svg)](https://github.com/takuyaohashi/dot_pagination_swiper/actions)
[![codecov](https://codecov.io/gh/takuyaohashi/dot_pagination_swiper/branch/master/graph/badge.svg)](https://codecov.io/gh/takuyaohashi/dot_pagination_swiper)

 A simple swiper with dot pagination.

## Usage
To use this plugin, add `dot_pagination_swiper` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## Example
Use default constructor
``` dart
import 'package:dot_pagination_swiper/dot_pagination_swiper.dart';
import 'package:flutter/material.dart';

@immutable
class SwipePage extends StatelessWidget {
  const SwipePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DotPaginationSwiper(
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
   );
  }
}
```


Use builder constructor
``` dart
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
```
