import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({Key key, this.color, this.width = 100, this.height = 100})
      : super(key: key);

  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
    );
  }
}
