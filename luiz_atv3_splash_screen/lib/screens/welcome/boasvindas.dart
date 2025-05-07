import 'package:flutter/material.dart';

Widget boasVindas() {
  return Container(
    color: const Color.fromARGB(255, 42, 77, 215),
    child: const Center(
      child: Column(
        children: [
          SizedBox(height: 100),
          Text(

            'Bem vindo!',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Remix',
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          SizedBox(height: 20),
          Text('Clique no botão abaixo para iniciar o Onboarding',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            )),
           SizedBox(height: 600),
          Text('App feito por Luiz Felipe Bastião',
            style: TextStyle(
              fontSize: 20,
            
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    ),
  );
}
