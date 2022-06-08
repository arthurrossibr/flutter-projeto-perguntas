import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(const PerguntasApp());
}

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({Key? key}) : super(key: key);

  @override
  State<PerguntasApp> createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'resposta': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'resposta': ['Cachorro', 'Gato', 'Furão', 'Hamster'],
      },
      {
        'texto': 'Qual é o seu veículo favorito?',
        'resposta': ['Carro', 'Moto', 'Barco', 'Bicicleta'],
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          Resposta('Resposta 1', _responder),
          Resposta('Resposta 2', _responder),
          Resposta('Resposta 3', _responder),
        ],
      ),
    ));
  }
}
