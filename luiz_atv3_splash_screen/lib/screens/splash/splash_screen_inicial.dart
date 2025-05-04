import 'package:flutter/material.dart';
import '/pages/pagina_inicial.dart';

class SplashScreenInicial extends StatefulWidget {
  const SplashScreenInicial({super.key});

  @override
  State<SplashScreenInicial> createState() => _SplashScreenInicialState();
}

class _SplashScreenInicialState extends State<SplashScreenInicial> {
  
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder:(context) => const paginaInicial(),)); 
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Splash screen'),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}