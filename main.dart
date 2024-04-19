import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraPalomino());
}

class CalculadoraPalomino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculadora(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Palomino'),
      ),
      body: Container(
        color: Color.fromARGB(255, 12, 41, 65), 
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            pantallaResultados(),
            SizedBox(height: 16.0),
            teclas(),
          ],
        ),
      ),
    );
  }

  Widget pantallaResultados() {
    return Container(
      alignment: Alignment.topRight,
      height: 200.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 70.0),
      color: Color.fromARGB(255, 0, 183, 255),
      child: Text(
        '0',
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 40.0),
      ),
    );
  }

  Widget teclas() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          rowOne(['0', '+', '-', '=']),
          rowOne(['7', '8', '9', 'x']),
          rowOne(['4', '5', '6', '/']),
          rowOne(['1', '2', '3', 'Eliminar']),
        ],
      ),
    );
  }

  Widget rowOne(List<String> labels) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: labels
            .map(
              (label) => Expanded(
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Color.fromARGB(255, 11, 10, 65), 
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      label,
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}