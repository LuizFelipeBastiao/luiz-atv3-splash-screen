import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TelaOnboarding1 extends StatefulWidget {
  const TelaOnboarding1({Key? key}) : super(key: key);

  @override
  State<TelaOnboarding1> createState() => _TelaOnboarding1State();

  
}

class _TelaOnboarding1State extends State<TelaOnboarding1>{

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 146, 28, 28),
      child:  Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            const Text(
              'Ola!',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Academic',
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const Text(
              'Este app feito no Flutter tem como objetivo demonstrar o uso do Widget Onboarding que permite o arraste de paginas.',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Aesthetic',
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
