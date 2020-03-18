import 'package:flutter/material.dart';
import 'countdown_flutter.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Widgets Exanples",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Duration duration = Duration(seconds: 10);

  void setTimer(){
    setState(() {
      duration = Duration(minutes: 1);
    });
  }

  Widget timer(Duration dure){
    return Center(
      child: Countdown(
        duration: dure,
        onFinish: () {
          setState(() {

          });
        },
        builder: (BuildContext ctx, Duration remaining) {
          return Text('${remaining.inMinutes}:${remaining.inSeconds}');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messi'),
      ),
      body: Column(
        children: <Widget>[
          timer(Duration(seconds: 10)),
          FlatButton(
              onPressed:()=>timer(Duration(minutes: 1)),
              child: Text('Messi'),
          ),
        ],
      ),
    );
  }
}
