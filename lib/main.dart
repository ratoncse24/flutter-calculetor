import 'package:flutter/material.dart';

import './Homepage.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       title: "Calculator",
        theme: new ThemeData(
           primarySwatch: Colors.red,
           primaryColor: Colors.redAccent,
        ),
        home: new Homepage(),
    );
  }
}