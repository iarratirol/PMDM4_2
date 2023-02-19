import 'package:flutter/material.dart';
import 'button_widget.dart';

class BlueWidget extends StatelessWidget {
  //Coge la funcion obtenida en el padre
  final Function incrementarContador;
  const BlueWidget({super.key, required this.incrementarContador});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        color: Colors.blue[200],
        //Pasa la funcion al hijo
        child: ButtonWidget(incrementarContador: incrementarContador),
      ),
    );
  }
}
