import 'package:flutter/material.dart';

class paginaInicial extends StatefulWidget {
  const paginaInicial({super.key});

  @override
  State<paginaInicial> createState() => _paginaInicialState();
}

class _paginaInicialState extends State<paginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      
    );
  }
}