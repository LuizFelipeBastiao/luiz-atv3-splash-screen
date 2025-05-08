import 'package:flutter/material.dart';
import 'package:luiz_atv3_splash_screen/screens/onboarding/onboarding.dart';
import 'package:lottie/lottie.dart';

class TelaSplash extends StatefulWidget {
  const TelaSplash({Key? key}) : super(key: key);

  @override
  State<TelaSplash> createState() => _TelaSplashState();
}

class _TelaSplashState extends State<TelaSplash> {
  double _opacidade = 1.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _opacidade = 0.0; // Inicia o fade-out
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        // Aguarda o fade-out antes de navegar
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const TelaOnboarding()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:const Color.fromARGB(255, 146, 28, 28),
      body: AnimatedOpacity(
        opacity: _opacidade,
        duration: const Duration(milliseconds: 500), // Duração do fade-out
        child: Container(
          color: Colors.black,
          child: Lottie.asset(
            'assets/animations/loading.json',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}