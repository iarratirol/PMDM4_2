import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  //Coge la funcion obtenida en el padre
  final Function incrementarContador;
  const ButtonWidget({super.key, required this.incrementarContador});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: TextButton(
        onPressed: () => {
          print("Cuando pulsamos este botón NO pasa nada..."),
          print("... pero queremos que se actualice el contador!!!!"),
          incrementarContador() //Llama a la funcion de incrementarContador
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Update counter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              letterSpacing: -2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
