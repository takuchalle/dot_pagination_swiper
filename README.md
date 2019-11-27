# dot_pagination_swiper

[![Actions Status](https://github.com/takuyaohashi/dot_pagination_swiper/workflows/test/badge.svg)](https://github.com/takuyaohashi/dot_pagination_swiper/actions)
[![codecov](https://codecov.io/gh/takuyaohashi/dot_pagination_swiper/branch/master/graph/badge.svg)](https://codecov.io/gh/takuyaohashi/dot_pagination_swiper)

 A simple swiper with dot pagination.

## Usage
To use this plugin, add `dot_pagination_swiper` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

![](https://github.com/takuyaohashi/dot_pagination_swiper/blob/master/image/dot_pagination_swiper.gif)

## Example
Use default constructor
``` dart
import 'package:dot_pagination_swiper/dot_pagination_swiper.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

@immutable
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DotPaginationSwiper(
          children: <Widget>[
            Center(child: Text('Page 1')),
            Center(child: Text('Page 2')),
            Center(child: Text('Page 3')),
            Center(child: Text('Page 4')),
            Center(child: Text('Page 5')),
          ],
        ),
      ),
    );
  }
}
```

Use builder constructor
``` dart
import 'package:dot_pagination_swiper/dot_pagination_swiper.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

@immutable
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DotPaginationSwiper.builder(
          itemCount: 6,
          itemBuilder: (context, i) => Center(
            child: Text('Page $i'),
          ),
        ),
      ),
    );
  }
}
```
