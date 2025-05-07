import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

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
  int _paginaAtual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          (Onboarding(
            swipeableBody: [
              // Lista de widgets que podem ser arrastados horizontalmente
              // Cada widget representa uma tela de onboarding
              TelaOnboarding1(),
              TelaOnboarding2(),
              TelaOnboarding3(),
            ],
          )),
          Column(children: [
          const SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: _paginaAtual == index ? 24:16,
                height: _paginaAtual == index ? 24:16,
                decoration: BoxDecoration(
                  color: _paginaAtual == index ? Colors.blue : Colors.grey,
                  shape : BoxShape.circle
                ),
              );
            }),
          ),
        ],
        )],
    ));
  }
}
