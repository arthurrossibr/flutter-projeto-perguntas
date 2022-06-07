import 'package:flutter/material.dart';
import './questao.dart';

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

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    debugPrint('perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu instrutor favorito?'
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              onPressed: _responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              onPressed: _responder,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              onPressed: _responder,
              child: const Text('Resposta 3'),
            ),
          ],
        ),
      )
    );
  }
}