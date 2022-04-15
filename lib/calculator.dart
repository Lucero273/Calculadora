import 'package:flutter/material.dart';

class HomeCalculadora extends StatefulWidget {
  @override
  State createState() => new HomeCalculadoraState();
}

class HomeCalculadoraState extends State<HomeCalculadora> {
  double num1 = 0, num2 = 0, res = 0; //definimos las variables

// Creamos los controladores
  final TextEditingController _controllerNum1 = new TextEditingController(); 
  final TextEditingController _controllerNum2 = new TextEditingController();

// Creamos las funciones de lógica
  void calcSum() {
    setState(() { //usamos el método setState para la reconstrucción del widget, ya que cambiará de estado
      num1 = double.parse(_controllerNum1.text);
      num2 = double.parse(_controllerNum2.text);
      res = num1 + num2; //guardamos la respuesta
    });
  }

  void calcDif() {
    setState(() {
      num1 = double.parse(_controllerNum1.text);
      num2 = double.parse(_controllerNum2.text);
      res = num1 - num2;
    });
  }

  void calcMult() {
    setState(() {
      num1 = double.parse(_controllerNum1.text);
      num2 = double.parse(_controllerNum2.text);
      res = num1 * num2;
    });
  }

  void calcDiv() {
    setState(() {
      num1 = double.parse(_controllerNum1.text);
      num2 = double.parse(_controllerNum2.text);
      res = num1 / num2;
    });
  }

// Función limpiar (empieza un nuevo cálculo)
  void doClear() {
    setState(() {
      _controllerNum1.text = " "; //mandamos un string vacío
      _controllerNum2.text = " "; //mandamos un string vacío
      res = 0; //volvemos al valor 0 para iniciar nuevamente
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
          children: <Widget>[

            // Mostramos el resultado
            new Text(
              "Resultado: $res", //adjuntamos el valor del resultado
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),

            new Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
            ),

            // Inputs
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 1"),
              controller: _controllerNum1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 2"),
              controller: _controllerNum2,
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),

            // Creamos la fila con los botones ( + , -)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //espacio uniforme entre los 2 botones
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.amber,
                  onPressed: calcSum, //llamamos a la función
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.amber,
                  onPressed: calcDif,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            // Creamos la fila con los botones ( x , /)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("x"),
                  color: Colors.amber,
                  onPressed: calcMult,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.amber,
                  onPressed: calcDiv,
                ),
              ],
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),

            // Botón clear
            new Row(
              mainAxisAlignment: MainAxisAlignment.center, //lo centramos
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
