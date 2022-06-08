import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    Key? key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  }) : super(key: key);

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
              resp['texto'].toString(),
              () => quandoResponder(int.parse(resp['pontos'].toString()))
          );
        }).toList(),
        // ... é um spread operator
      ],
    );
  }
}
