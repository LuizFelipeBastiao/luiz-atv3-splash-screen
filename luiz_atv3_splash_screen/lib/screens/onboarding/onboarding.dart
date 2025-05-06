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

class _TelaOnboardingState extends State<TelaOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Onboarding(
        swipeableBody: [
          TelaOnboarding1(),
          TelaOnboarding2(),
          TelaOnboarding3(),
        ],
      )),
    );
  }
}
