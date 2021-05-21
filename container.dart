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
      body: Container(
        padding:EdgeInsets.all(30),
        margin:EdgeInsets.all(50),
        color:Colors.blueGrey,
        child:Text("Hello"),

      ),
    );
  }
}
