import 'package:flutter/material.dart';
import 'red_widget.dart';

class OrangeWidget extends StatelessWidget {
  //Coge el contador del padre
  final int counter;
  const OrangeWidget({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[200],
      //Pasa el contador al hijo
      child: RedWidget(
        counter: counter,
      ),
    );
  }
}
