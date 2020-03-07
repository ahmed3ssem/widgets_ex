import 'package:flutter/material.dart';

class ListViewWithFlatingButton extends StatefulWidget {
  @override
  _ListViewWithFlatingButtonState createState() => _ListViewWithFlatingButtonState();
}

class _ListViewWithFlatingButtonState extends State<ListViewWithFlatingButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListView.builder(
          itemBuilder: (context, position) {
            return Container(
              padding: EdgeInsets.all(10),
              height: 100,
              child: Card(
                child: new InkWell(
                  onTap: () {

                  },
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Name:'),
                        Text('Date:'),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
        ),
        FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
