import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({
    Key? key,
    required this.txt,
    required this.responder,
  }) : super(key: key);

  final String txt;
  final void Function() responder;

  Color? get corPersonalizadaBotao {
    // primeira cor a ser escolhida
    if (txt == "Vermelho") {
      return Colors.redAccent;
    }
    if (txt == "Azul") {
      return Colors.blueAccent;
    }
    if (txt == "Amarelo") {
      return Colors.yellowAccent;
    }
    // segunda cor a ser escolhida
    if (txt == "Roxo") {
      return Colors.purpleAccent;
    }
    if (txt == "Laranja") {
      return Colors.orangeAccent;
    }
    if (txt == "Verde") {
      return Colors.green;
    }
    // cor neutra, para evitar erros
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        onPressed: responder,
        style: ElevatedButton.styleFrom(
            primary: corPersonalizadaBotao, onPrimary: Colors.black),
        child: Text(txt,
            style: const TextStyle(
              fontSize: 24,
            )),
      ),
    );
  }
}
