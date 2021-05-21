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
    Response response = await get(
        Uri.parse("http://dummy.restapiexample.com/api/v1/employees"));
    Map empData = jsonDecode(response.body);
    employeeData = empData['data'];
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
      body: ListView.builder(
          itemCount: employeeData.length,
          itemBuilder: (context, index) {
            return Card(
              child:ListTile(
                onTap:(){
                  Navigator.pushNamed(context,'/detail',arguments:{'employee_data':employeeData[index]});
                },
                title:Text(employeeData[index]['employee_name']),
              subtitle:Text('Age:${employeeData[index]['employee_age']}'),
              ),
            );
          }),
    );
  }
}
