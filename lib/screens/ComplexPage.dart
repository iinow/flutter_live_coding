import 'package:flutter/material.dart';
import 'package:live_coding/screens/Page.dart';

class ComplexPage extends StatefulWidget {
  ComplexPage({Key key}) : super(key: key);

  @override
  _ComplexPageState createState() => _ComplexPageState();
}

class _ComplexPageState extends State<ComplexPage> {
  var _index = 0;
  final pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '복합한 UI',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: pages[_index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.assessment), label: '이용서비스'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: '내 정보'),
        ],
      ),
    );
  }
}
