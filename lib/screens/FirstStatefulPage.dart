import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_coding/model/Person.dart';
import 'package:live_coding/screens/SecondStatefulPage.dart';

class FirstStatefulPage extends StatefulWidget {
  FirstStatefulPage({Key key}) : super(key: key);

  @override
  _FirstStatefulPageState createState() => _FirstStatefulPageState();
}

class _FirstStatefulPageState extends State<FirstStatefulPage> {
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('다음 페이지로'),
      ),
      body: RaisedButton(
        child: Text('다음 페이지로'),
        onPressed: () {
          final person = Person(
            name: '홍길동',
            age: 20,
          );

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SecondStatefulPage(
          //       person: person,
          //     ),
          //   ),
          // );

          Navigator.pushNamed(context, '/second',
              arguments: {'person': person});
        },
      ),
    );
  }
}
