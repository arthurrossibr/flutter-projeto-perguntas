import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacao, {Key? key}) : super(key: key);

  final int pontuacao;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          fraseResultado,
          style: const TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
