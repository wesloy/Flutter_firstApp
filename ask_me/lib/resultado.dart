import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key, required this.cores, required this.reiniciar})
      : super(key: key);

  final List<String> cores;
  final void Function() reiniciar;

  Color get corResultante {
    var cor1 = cores[0].toString();
    var cor2 = cores[1].toString();

    if (cor1 == 'red' && cor2 == 'green') {
      return const Color.fromARGB(255, 173, 180, 1);
    }
    if (cor1 == 'red' && cor2 == 'orange') {
      return const Color.fromARGB(255, 249, 114, 1);
    }
    if (cor1 == 'red' && cor2 == 'purple') {
      return const Color.fromARGB(255, 218, 1, 180);
    }

    if (cor1 == 'yellow' && cor2 == 'green') {
      return const Color.fromARGB(255, 179, 249, 1);
    }
    if (cor1 == 'yellow' && cor2 == 'orange') {
      return const Color.fromARGB(255, 246, 215, 1);
    }
    if (cor1 == 'yellow' && cor2 == 'purple') {
      return const Color.fromARGB(255, 229, 171, 180);
    }

    if (cor1 == 'blue' && cor2 == 'green') {
      return const Color.fromARGB(255, 5, 184, 180);
    }
    if (cor1 == 'blue' && cor2 == 'orange') {
      return const Color.fromARGB(255, 180, 156, 180);
    }
    if (cor1 == 'blue' && cor2 == 'purple') {
      return const Color.fromARGB(255, 180, 37, 253);
    }
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: corResultante,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Esta é a cor resultante de suas escolhas!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Verdana',
              letterSpacing: 0.5,
              fontSize: 32,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: TextButton(
              onPressed: reiniciar,
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Verdana',
                  )),
              child: const Text('Reiniciar?'),
            ),
          )
        ],
      ),
    );
  }
}
