import 'package:flutter/material.dart';

class Pergunta extends StatelessWidget {
  const Pergunta({
    Key? key,
    required this.pergunta,
  }) : super(key: key);

  final String pergunta;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: Text(
        pergunta,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
