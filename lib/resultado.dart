import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Você respondeu todas as perguntas!',
          style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
