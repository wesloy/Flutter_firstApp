import 'dart:developer';

import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

main() => runApp(const AskMeApp());

class AskMeApp extends StatefulWidget {
  const AskMeApp({Key? key}) : super(key: key);

  @override
  State<AskMeApp> createState() => _AskMeAppState();
}

class _AskMeAppState extends State<AskMeApp> {
  var _perguntaSelecionada = 0;
  final List<String> _coresSelecionadas = [];

  final _listaPerguntas = const [
    {
      'pergunta': ' Qual é sua cor primária preferida?',
      'respostas': [
        {'texto': 'Vermelho', 'cor': 'red'},
        {'texto': 'Azul', 'cor': 'blue'},
        {'texto': 'Amarelo', 'cor': 'yellow'},
      ]
    },
    {
      'pergunta': ' Qual é sua cor secundária preferida?',
      'respostas': [
        {'texto': 'Roxo', 'cor': 'purple'},
        {'texto': 'Laranja', 'cor': 'orange'},
        {'texto': 'Verde', 'cor': 'green'},
      ]
    },
  ];

  void _responder(String cor) {
    setState(() {
      _perguntaSelecionada++;
      _coresSelecionadas.add(cor);
    });

    log(cor);
    log(_coresSelecionadas.length.toString());
  }

  bool get _validarListaPerguntas {
    // seleção deve ser menor que o tamanho da lista
    // levando em consideração que o índice começa em zero
    return _perguntaSelecionada < _listaPerguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 5),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Colors',
              style: TextStyle(fontSize: 36),
            ),
          ),
          body:
              _validarListaPerguntas // validando com operador ternário para evitar de solicitar uma pergunta fora do índice
                  ? Questionario(
                      listaPerguntas: _listaPerguntas,
                      perguntaSelecionada: _perguntaSelecionada,
                      responder: _responder,
                      validarListaPerguntas: _validarListaPerguntas,
                    )
                  : Resultado(cores: _coresSelecionadas),
        ),
      ),
    );
  }
}
