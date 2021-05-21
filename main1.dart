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
      body: Center(
        child: RaisedButton.icon(
          label: Text("Click Here"),
          onPressed: () {
            print("Pressed this button");
          },
          color: Colors.redAccent,
          icon: Icon(Icons.mail),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: null,
      ),
    );
  }
}
