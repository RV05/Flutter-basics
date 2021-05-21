import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List employeeData = [];

  void loadEmployeeData() async {
    Response response = await get(Uri.parse("http://dummy.restapiexample.com/api/v1/employees"));
    Map emp_Data = jsonDecode(response.body);
    employeeData = emp_Data['data'];
    print(employeeData);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadEmployeeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Home Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/detail');
        },
        child: Text('Click'),
      ),
    );
  }
}
