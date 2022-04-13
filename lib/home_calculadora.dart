import 'package:flutter/material.dart';

class HomeCalculadora extends StatefulWidget {
  @override
  State createState() => new HomeCalculadoraState();
}

class HomeCalculadoraState extends State<HomeCalculadora> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 =
      new TextEditingController(text: "Enter number 1");
  final TextEditingController t2 =
      new TextEditingController(text: "Enter number 2");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = " ";
      t2.text = " ";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true, //centramos el texto del appBar
        title: new Text("Calculadora"),
      ),
      body: new Container(
        margin: const EdgeInsets.only(top: 90.0),
        padding: const EdgeInsets.only(right: 60.0, left: 60.0),
        child: new Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Resultado: $sum",
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                // fontFamily: 'RobotoMono'
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.amber,
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.amber,
                  onPressed: doSub,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.amber,
                  onPressed: doMul,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.amber,
                  onPressed: doDiv,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.grey,
                  onPressed: doClear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
