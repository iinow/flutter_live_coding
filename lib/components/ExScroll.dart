import 'package:flutter/material.dart';

class ExScroll extends StatefulWidget {
  ExScroll({Key key}) : super(key: key);

  final items = List.generate(100, (index) => index).toList();

  @override
  _ExScrollState createState() => _ExScrollState();
}

class _ExScrollState extends State<ExScroll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map(
                (e) => Text('$e'),
              )
              .toList(),
        ),
      ),
    );
  }
}
