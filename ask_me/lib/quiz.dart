import 'package:flutter/material.dart';
import './asks.dart';
import './answaers.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key? key,
    required this.asksList,
    required this.askChecked,
    required this.answear,
    required this.checkedAsk,
  }) : super(key: key);

  final List<Map<String, Object>> asksList;
  final int askChecked;
  final void Function() answear;
  final bool checkedAsk;

  @override
  Widget build(BuildContext context) {
    // uma lista apenas com as respostas, que por sua vez, cada entrada é uma outra lista
    // validando com operador ternário para evitar de solicitar uma pergunta fora do índice
    List<String> answears =
        checkedAsk ? asksList[askChecked].cast()['answears'] : [];

    return Column(
      children: [
        Asks(
            ask: asksList[askChecked]['ask']
                .toString()), // listando a pergunta por acesso via ordem / chave
        ...answears
            .map((t) => Answaers(txt: t, checked: answear))
            .toList() // listando tudo por operador spread (Tipo um for intrínseco)
      ],
    );
  }
}
