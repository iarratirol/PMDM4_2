import 'package:flutter/material.dart';
import 'counter_widget.dart';

class RedWidget extends StatelessWidget {
  //Coge el contador del padre
  final int counter;
  const RedWidget({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        color: Colors.red[200],
        //Pasa el contador al hijo
        child: CounterWidget(
          counter: counter,
        ),
      ),
    );
  }
}
