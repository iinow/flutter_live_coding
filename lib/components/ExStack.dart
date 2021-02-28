import 'package:flutter/material.dart';

import 'Square.dart';

class ExStack extends StatelessWidget {
  const ExStack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Square(
            color: Colors.blueGrey,
            width: 100,
            height: 100,
          ),
          Square(
            color: Colors.red,
            width: 80,
            height: 80,
          ),
          Square(
            color: Colors.green,
            width: 50,
            height: 50,
          )
        ],
      ),
    );
  }
}
