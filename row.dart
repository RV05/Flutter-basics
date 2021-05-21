import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
// home:Text("Flutter Demo"),
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment:CrossAxisAlignment.end,
        children: <Widget>[
          Text("First"),
          FlatButton(
            child: Text('Second'),
            onPressed: () {},
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Text('Third'),
            color: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
