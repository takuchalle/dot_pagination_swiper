import 'package:flutter/material.dart';

@immutable
class ColorDot extends StatelessWidget {
  const ColorDot({Key key, this.color, this.radius}) : super(key: key);

  final Color color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    Color color = this.color ?? Theme.of(context).primaryColor;
    double radius = this.radius ?? 5;

    return Padding(
      padding: const EdgeInsets.all(1),
      child: CircleAvatar(
        foregroundColor: color,
        radius: radius,
      ),
    );
  }
}
