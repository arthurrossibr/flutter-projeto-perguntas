import 'package:flutter/material.dart';

main() {
  runApp(PerguntasApp());
}

class PerguntasApp extends StatelessWidget {

  var perguntaSelecionada = 0;

  void responder(){
    perguntaSelecionada++;
    print('Resposta $perguntaSelecionada');
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
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
          ],
        ),
      )
    );
  }
}