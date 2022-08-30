import 'package:flutter/material.dart';

class Answaers extends StatelessWidget {
  const Answaers({
    Key? key,
    required this.txt,
    required this.checked,
  }) : super(key: key);

  final String txt;
  final void Function() checked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        onPressed: checked,
        style: ElevatedButton.styleFrom(
            primary: Colors.amberAccent, onPrimary: Colors.black),
        child: Text(txt),
      ),
    );
  }
}
