import 'package:flutter/material.dart';

@immutable
class ColorDot extends StatelessWidget {
  const ColorDot({Key? key, this.color, this.borderColor, this.radius})
      : super(key: key);

  final Color? color;
  final Color? borderColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    Color color = this.color ?? Colors.white;
    Color borderColor = this.borderColor ?? Theme.of(context).primaryColor;
    double radius = this.radius ?? 8;

    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(
            width: 0.8,
            color: borderColor,
          ),
        ),
      ),
    );
  }
}
