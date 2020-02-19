import 'package:flutter/material.dart';
import 'package:widgets_ex/check_box.dart';
import 'package:widgets_ex/date_piker.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Widgets Exanples",
      debugShowCheckedModeBanner: false,
      home: CheckBox(),
    );
  }
}