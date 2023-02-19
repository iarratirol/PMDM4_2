import 'package:flutter/material.dart';
import 'blue_widget.dart';

class GreenWidget extends StatelessWidget {
  //Coge la funcion obtenida en el padre
  final Function incrementarContador;
  const GreenWidget({super.key, required this.incrementarContador});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[200],
      //Pasa la funcion al hijo
      child: BlueWidget(incrementarContador: incrementarContador),
    );
  }
}
