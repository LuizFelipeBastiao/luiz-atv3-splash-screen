import 'package:flutter/material.dart';
import 'package:luiz_atv3_splash_screen/pages/pagina_inicial.dart';

class TelaOnboarding3 extends StatelessWidget {
  const TelaOnboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 149, 57, 188),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 120),
            const Text(
              'Obrigado!',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Aesthetic',
                color: Color.fromARGB(255, 147, 194, 191),
              ),
            ),
            const SizedBox(height: 200),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaInicial()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 193, 74, 74),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.all(20),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: Text('Voltar para o inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
