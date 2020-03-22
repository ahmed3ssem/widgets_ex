import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messi'),
        actions: <Widget>[
          Container(
            width: 20,
            height: 20,
            margin: const EdgeInsets.only(right: 10,top: 5,bottom: 5),
            child: RawMaterialButton(
              onPressed: () {},
              shape: new CircleBorder(),
              elevation: 2.0,
              fillColor: Colors.red,
            ),
          )
        ],
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Text('Messi:'),
            Image.network('https://www.gstatic.com/tv/thumb/persons/983712/983712_v9_ba.jpg',width: 450,height: 150,)
          ],
        ),
      )
    );
  }
}
