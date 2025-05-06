import 'package:flutter/material.dart';

class TelaOnboarding1 extends StatelessWidget {
  const TelaOnboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 193, 74, 74),
      child: const Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Text(
              'Ola!',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Academic',
                color: Color.fromARGB(255, 147, 194, 191),
              ),
            ),
            Text(
              'Este app feito no Flutter tem como objetivo demonstrar o uso do Widget Onboarding que permite o arraste de paginas.',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Aesthetic',
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Icon(Icons.send_to_mobile, size: 100),
            Text(
              'Arraste para o lado --->',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Aesthetic',
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
