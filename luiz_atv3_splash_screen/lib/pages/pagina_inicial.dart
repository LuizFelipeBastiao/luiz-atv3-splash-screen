import 'package:flutter/material.dart';
import 'package:luiz_atv3_splash_screen/screens/welcome/boasvindas.dart';
import 'package:luiz_atv3_splash_screen/screens/onboarding/onboarding.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
        automaticallyImplyLeading: false,
      ),

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
                      MaterialPageRoute(
                        builder: (context) => const TelaOnboarding(),
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
