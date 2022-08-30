import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

main() => runApp(const AskMeApp());

class AskMeApp extends StatefulWidget {
  const AskMeApp({Key? key}) : super(key: key);

  @override
  State<AskMeApp> createState() => _AskMeAppState();
}

class _AskMeAppState extends State<AskMeApp> {
  var _askChecked = 0;

  final _asksList = const [
    {
      'ask': ' Qual é sua cor primária preferida?',
      'answears': ['Vermelho', 'Azul', 'Amarelo']
    },
    {
      'ask': ' Qual é sua cor secundária preferida?',
      'answears': ['Roxo', 'Laranja', 'Verde']
    },
  ];

  void _answear() {
    setState(() {
      _askChecked++;
    });
  }

  bool get _checkedAsk {
    // seleção deve ser menor que o tamanho da lista
    // levando em consideração que o índice começa em zero
    return _askChecked < _asksList.length;
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
              _checkedAsk // validando com operador ternário para evitar de solicitar uma pergunta fora do índice
                  ? Quiz(
                      answear: _answear,
                      askChecked: _askChecked,
                      asksList: _asksList,
                      checkedAsk: _checkedAsk,
                    )
                  : const Result(),
        ),
      ),
    );
  }
}
