import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

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
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': [
        {'texto': 'Preto', 'pontos': 10},
        {'texto': 'Vermelho', 'pontos': 5},
        {'texto': 'Verde', 'pontos': 3},
        {'texto': 'Branco', 'pontos': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Cachorro', 'pontos': 10},
        {'texto': 'Gato', 'pontos': 5},
        {'texto': 'Furão', 'pontos': 3},
        {'texto': 'Hamster', 'pontos': 1},
      ],
    },
    {
      'texto': 'Qual é o seu veículo favorito?',
      'resposta': [
        {'texto': 'Moto', 'pontos': 10},
        {'texto': 'Carro', 'pontos': 5},
        {'texto': 'Ônibus', 'pontos': 3},
        {'texto': 'Bicicleta', 'pontos': 1},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (_perguntaSelecionada < _perguntas.length) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}
