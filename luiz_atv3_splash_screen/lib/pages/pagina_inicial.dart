import 'package:flutter/material.dart';
import 'package:luiz_atv3_splash_screen/screens/welcome/boasvindas.dart';

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
        
      ),
      body : Stack(children: [boasVindas()]
      
    );
  }
}