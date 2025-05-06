import 'package:flutter/material.dart';
import 'package:luiz_atv3_splash_screen/pages/pagina_inicial.dart';

Widget boasVindas() {
  return Container(
    color: const Color.fromARGB(255, 42, 77, 215),
    child: const Center(
      child: Column(
        children: [
          Text(
            'Bem vindo!',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Academic',
              color: Color.fromARGB(255, 147, 194, 191),
            ),
          ),
          Text(
            'Bem vindo!',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Remix',
              color: Color.fromARGB(255, 147, 194, 191),
            ),
          ),
          Text(
            'Bem vindo!',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Aesthetic',
              color: Color.fromARGB(255, 147, 194, 191),
            ),
          ),
          Text(
            'Bem vindo!',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Outfielder',
              color: Color.fromARGB(255, 147, 194, 191),
            ),
          ),
          Text(
            'Bem vindo!',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Squarish',
              color: Color.fromARGB(255, 147, 194, 191),
            ),
          ),
        ],
      ),
    ),
  );
}
