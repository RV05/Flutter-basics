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
          child: Image(
        image: AssetImage('assets/b3.png'),
      )),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: null,
      ),
    );
  }
}
