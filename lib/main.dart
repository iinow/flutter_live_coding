import 'package:flutter/material.dart';
import 'package:live_coding/components/ExRadio.dart';
import 'package:live_coding/components/ExRow.dart';
import 'package:live_coding/components/ExScroll.dart';
import 'package:live_coding/components/ExStack.dart';
import 'package:live_coding/screens/ComplexPage.dart';
import 'package:live_coding/screens/FirstStatefulPage.dart';
import 'package:live_coding/screens/SecondStatefulPage.dart';

import 'components/Square.dart';

void main() {
  runApp(MyApp());
  // runApp(ComplexPage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   onGenerateRoute: (settings) {
    //     final args = settings.arguments as Map;
    //     if (settings.name == '/first') {
    //       return MaterialPageRoute(
    //         settings: settings,
    //         builder: (ctx) => FirstStatefulPage(),
    //       );
    //     } else if (settings.name == '/second') {
    //       return MaterialPageRoute(
    //         settings: settings,
    //         builder: (ctx) => SecondStatefulPage(person: args['person']),
    //       );
    //     }
    //     return null;
    //   },
    //   // routes: {
    //   //   '/first': (context) => FirstStatefulPage(),
    //   //   '/second': (context) => SecondStatefulPage(person: null),
    //   // },x
    //   home: MyHomePage(title: 'Flutter Demo Home Page'),
    // );
    return MaterialApp(
      home: ComplexPage(),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: SafeArea(
    //     child: Container(
    //       color: Colors.white,
    //       // child: ExRow(),
    //       // child: ExStack(),
    //       // child: ExScroll(),
    //       child: ExRadio(),
    //     ),
    //   ),
    // );
    return FirstStatefulPage();
  }
}
