import 'package:flutter/material.dart';

class TelaOnboarding2 extends StatelessWidget {
  const TelaOnboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 11, 134, 25),
      child: const Center(
        child: Column(
          children: [
            SizedBox(height: 120),
            Text(
              'OnBoarding',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Remix',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 60),
            Text(
              'O Widget Onboarding é uma ferramenta que permite criar telas de introdução para aplicativos móveis.',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Squarish',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Onboarding tem um parametro chamado swipableBody que é uma lista de widgets que podem ser arrastados horizontalmente.',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Squarish',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Icon(
              Icons.send_to_mobile,
              size: 100,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ],
        ),
      ),
    );
  }
}
