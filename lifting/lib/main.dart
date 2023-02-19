import 'package:flutter/material.dart';
import 'widgets/green_widget.dart';
import 'widgets/orange_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int counter = 42;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Text('Lifting up state'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Indica a los widgets hijos cual es la funcion para incrementar el contador
            GreenWidget(
              incrementarContador: incrementarContador,
            ),
            // Indica a los widgets hijos cual es el valor del contador
            OrangeWidget(counter: counter),
          ],
        ),
      ),
    );
  }

//Funcion para incrementar el contador
  void incrementarContador() {
    setState(() {
      counter++;
    });
  }
}
