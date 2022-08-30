import 'package:flutter/cupertino.dart';

class Asks extends StatelessWidget {
  const Asks({
    Key? key,
    required this.ask,
  }) : super(key: key);

  final String ask;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: Text(
        ask,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
