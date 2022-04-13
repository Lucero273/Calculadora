import 'package:flutter/material.dart';
import 'home_calculadora.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Proyecto calculadora básica",
      theme: new ThemeData(primarySwatch: Colors.amber, scaffoldBackgroundColor: Color.fromARGB(255, 192, 238, 238)),
      home: new HomeCalculadora(),
    );
  }
}