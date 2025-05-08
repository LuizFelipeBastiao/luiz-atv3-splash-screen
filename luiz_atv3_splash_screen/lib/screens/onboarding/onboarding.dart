import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
            // a cada mudança da página, atualiza uma animação no topo
            onPageChanges:
                (netDragDistance, pagesLength, currentIndex, slideDirection) =>
                    {
                      setState(() {
                        _paginaAtual = currentIndex;
                      }),
                    },
          )),
          Column(
            children: [
              const SizedBox(height: 50),
              //mostra 3 pontos no topo da página que mudam de aparência dependendo de qual página
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: _paginaAtual == index ? 24 : 16,
                    height: _paginaAtual == index ? 24 : 16,
                    decoration: BoxDecoration(
                      color: _mostraCorPorIndex(index, _paginaAtual),
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//muda a cor dos circulos baseado na página
Color _mostraCorPorIndex(int index, int paginaAtual) {
  if (index == paginaAtual && paginaAtual == 0) {
    return const Color.fromARGB(255, 224, 101, 101);
  } else if (index == paginaAtual && paginaAtual == 1) {
    return const Color.fromARGB(255, 13, 255, 0);
  } else if (index == paginaAtual && paginaAtual == 2) {
    return const Color.fromARGB(255, 207, 152, 204);
  } else {
    return const Color.fromARGB(255, 255, 255, 255);
  }
}
