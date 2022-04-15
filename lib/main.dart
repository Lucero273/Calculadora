import 'package:flutter/material.dart';
import 'calculator.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Proyecto calculadora básica",
      theme: new ThemeData(
          primarySwatch: Colors.amber, //le damos un color al bar
          scaffoldBackgroundColor: Color.fromARGB(
              255, 192, 238, 238)),  // color al background
      home: new HomeCalculadora(),
    );
  }
}
