import 'package:flutter/material.dart';
import 'package:luiz_atv3_splash_screen/screens/welcome/boasvindas.dart';
import 'package:luiz_atv3_splash_screen/screens/splash/splashOB.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //Boas vindas e botão que leva para a tela de onboarding
        // são separados e empilhados um sobre o outro
        children: [
          boasVindas(), // Função que retorna o widget de boas-vindas
          Center(
            child: Column(
              children: [
                const SizedBox(height: 400),
                  TextButton(
                  // Botão para ir para a tela de onboarding
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>  const TelaSplash(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const inicio = Offset(0.0, 1.0);
                          const fim = Offset.zero;
                          const curva = Curves.fastLinearToSlowEaseIn;

                          var tween = Tween(begin: inicio, end: fim).chain(CurveTween(curve:curva));
                          var offsetAnimation = animation.drive(tween);

                          return SlideTransition(position: offsetAnimation,
                          child : child);
                        },
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 175, 166, 166),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.all(20),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text('Onboarding'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
