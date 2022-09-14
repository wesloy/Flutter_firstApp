import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({
    Key? key,
    required this.txt,
    required this.responder,
  }) : super(key: key);

  final String txt;
  final void Function() responder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        onPressed: responder,
        style: ElevatedButton.styleFrom(
            primary: Colors.amberAccent, onPrimary: Colors.black),
        child: Text(txt,
            style: const TextStyle(
              fontSize: 24,
            )),
      ),
    );
  }
}
