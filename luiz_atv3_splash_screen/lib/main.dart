import 'package:flutter/material.dart';
import 'package:luiz_atv3_splash_screen/screens/onboarding/onboarding.dart';
import 'pages/pagina_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(), // Substitua pela sua página inicial
    );
  }
}
