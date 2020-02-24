import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {

  int _currentIndex = 1;

  List<String> _texts = [
    "Messi",
    "Ronaldo",
    "Xavi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messi"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: _texts
            .map((text) => RadioListTile(
          groupValue: _currentIndex,
          title: Text("$text"),
          value: text,
          onChanged: (val) {
            setState(() {
              _currentIndex = val;
              print(val);
            });
          },
        )).toList(),
      ),
    );
  }
}
