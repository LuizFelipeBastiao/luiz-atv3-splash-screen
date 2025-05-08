import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TelaOnboarding2 extends StatefulWidget{
  const TelaOnboarding2({Key? key}) : super(key: key);

  @override
  State<TelaOnboarding2> createState() => _TelaOnboarding2State();
} 

class _TelaOnboarding2State extends State<TelaOnboarding2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 11, 134, 25),
      child:  Center(
        child: Column(
          children: [
            const SizedBox(height: 120),
            const Text(
              'OnBoarding',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Remix',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 60),
            const Text(
              'O Widget Onboarding é uma ferramenta que permite criar telas de introdução para aplicativos móveis.',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Squarish',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Onboarding tem um parametro chamado swipableBody que é uma lista de widgets que podem ser arrastados horizontalmente.',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Squarish',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Lottie.asset('assets/animations/hand3.json')
          ],
        ),
      ),
    );
  }
}
