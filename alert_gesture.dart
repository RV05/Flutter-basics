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
        child: GestureDetector(
          onTap: () {
            displayAlert(context, 'On Tap Detected');
          },
          onDoubleTap: () {
            displayAlert(context, 'Double Tap Detected');
          },
          onLongPress: () {
            displayAlert(context, 'Long Tap Detected');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: null,
      ),
    );
  }
}

void displayAlert(BuildContext context, String typeOfGesture) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Intruder Alert"),
          content: Text('$typeOfGesture'),
          actions: <Widget>[
            FlatButton(
              child: Text('Dismiss'),
              onPressed: () {
                Navigator.pop(context, false);
              },
            )
          ],
        );
      });
}
