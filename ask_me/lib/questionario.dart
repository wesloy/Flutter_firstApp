import 'package:flutter/material.dart';
import 'pergunta.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    Key? key,
    required this.listaPerguntas,
    required this.perguntaSelecionada,
    required this.responder,
    required this.validarListaPerguntas,
  }) : super(key: key);

  final List<Map<String, Object>> listaPerguntas;
  final int perguntaSelecionada;
  final void Function(String) responder;
  final bool validarListaPerguntas;

  @override
  Widget build(BuildContext context) {
    // uma lista apenas com as respostas, que por sua vez, cada entrada é uma outra lista
    // validando com operador ternário para evitar de solicitar uma pergunta fora do índice
    List<Map<String, Object>> respostas = validarListaPerguntas
        ? listaPerguntas[perguntaSelecionada].cast()['respostas']
        : [];

    return Column(
      children: [
        Pergunta(
            pergunta: listaPerguntas[perguntaSelecionada]['pergunta']
                .toString()), // listando a pergunta por acesso via ordem / chave
        ...respostas
            .map((resp) => Resposta(
                  txt: resp['texto'].toString(),
                  responder: () => responder(resp['cor'].toString()),
                ))
            .toList() // listando tudo por operador spread (Tipo um for intrínseco)
      ],
    );
  }
}
