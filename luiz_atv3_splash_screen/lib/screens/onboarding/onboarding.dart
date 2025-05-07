import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'onboardingTela1.dart';
import 'onboardingTela2.dart';
import 'onboardingTela3.dart';

class TelaOnboarding extends StatefulWidget {
  const TelaOnboarding({Key? key}) : super(key: key);

  @override
  State<TelaOnboarding> createState() => _TelaOnboardingState();
}

// Tela de Onboarding
// Esta tela é responsável por exibir o processo de onboarding do aplicativo
class _TelaOnboardingState extends State<TelaOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Onboarding(
        swipeableBody: [
          // Lista de widgets que podem ser arrastados horizontalmente
          // Cada widget representa uma tela de onboarding
          TelaOnboarding1(),
          TelaOnboarding2(),
          TelaOnboarding3(),
        ],
      )),
    );
  }
}
