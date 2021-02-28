import 'package:flutter/material.dart';

import 'Square.dart';

class ExRow extends StatelessWidget {
  const ExRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Square(
            color: Colors.red,
          ),
          Square(
            color: Colors.blue,
          ),
          Square(
            color: Colors.green,
          ),
          // Square(
          //   color: Colors.amberAccent,
          // ),
        ],
      ),
    );
  }
}
