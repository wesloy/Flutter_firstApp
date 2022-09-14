import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key, required this.cores}) : super(key: key);

  final List<String> cores;

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Parabéns', style: TextStyle(fontSize: 58)));
  }
}
