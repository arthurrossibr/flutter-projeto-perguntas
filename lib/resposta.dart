import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPressed;

  const Resposta(this.texto, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
          ),
          onPressed: onPressed,
          child: Text(texto),
      )
    );
  }
}
