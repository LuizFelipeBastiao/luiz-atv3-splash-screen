import 'package:flutter/material.dart';
import 'package:luiz_atv3_splash_screen/screens/welcome/boasvindas.dart';

import 'package:onboarding/onboarding.dart';

class TelaOnboarding extends StatefulWidget {
  const TelaOnboarding({Key? key}) : super(key: key);

  @override
  State<TelaOnboarding> createState() => _TelaOnboardingState();
}

class _TelaOnboardingState extends State<TelaOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Telas de Onboarding')),
      body: (Onboarding(swipeableBody: [])),
    );
  }
}
