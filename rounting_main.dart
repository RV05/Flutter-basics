

import 'package:flutter/material.dart';
import 'package:flutter_demo/Detailscreen.dart';
import 'package:flutter_demo/Homescreen.dart';

void main() => runApp(MaterialApp(

initialRoute: '/home',

routes:{
  '/home':(context)=>Homescreen(),
  '/detail':(context)=>Detailscreen()
},

));







