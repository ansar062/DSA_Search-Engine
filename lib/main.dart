import 'package:finaldsa/firstpage.dart';
import 'dart:ui';
import 'package:finaldsa/secondpage.dart';
import 'package:finaldsa/thirdpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSA Search Engine',
      theme: ThemeData(
        //brightness: Brightness.dark,
        canvasColor: Colors.white,
        fontFamily: 'Georgia',
      ),
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
