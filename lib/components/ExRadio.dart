import 'package:flutter/material.dart';

enum Gender { MAN, WOMAN }

class ExRadio extends StatefulWidget {
  ExRadio({Key key}) : super(key: key);

  Gender _gender = Gender.MAN;

  @override
  _ExRadioState createState() => _ExRadioState();
}

class _ExRadioState extends State<ExRadio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Text(
            'ListTile 사용',
            textAlign: TextAlign.center,
          ),
          ListTile(
            title: Text('남자'),
            leading: Radio(
              value: Gender.MAN,
              groupValue: widget._gender,
              onChanged: (value) {
                setState(() {
                  widget._gender = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('여자'),
            leading: Radio(
              value: Gender.WOMAN,
              groupValue: widget._gender,
              onChanged: (value) {
                setState(() {
                  widget._gender = value;
                });
              },
            ),
          ),
          Text(
            'RadioListTile 사용',
            textAlign: TextAlign.center,
          ),
          RadioListTile(
            title: Text('남자'),
            value: Gender.MAN,
            groupValue: widget._gender,
            onChanged: (value) {
              setState(() {
                widget._gender = value;
              });
            },
          ),
          RadioListTile(
            title: Text('여자'),
            value: Gender.WOMAN,
            groupValue: widget._gender,
            onChanged: (value) {
              setState(() {
                widget._gender = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
