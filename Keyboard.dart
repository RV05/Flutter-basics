import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
// home:Text("Flutter Demo"),
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        FocusScope.of(context).requestFocus(new FocusNode());
      },
          child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding:const EdgeInsets.all(32),
          child:TextField(
          obscureText: false,
          decoration:InputDecoration(
            labelText:'Username',
            labelStyle:TextStyle(
            color:Colors.redAccent
            ),
          ),
          cursorColor:Colors.redAccent,
          keyboardType:TextInputType.number,
        ),
      ),
      ),
    );
  }
}








