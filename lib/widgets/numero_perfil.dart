import 'package:flutter/material.dart';

class NumeroPerfil extends StatelessWidget {
  final String numero;
  final String rotulo;

  const NumeroPerfil({required this.numero, required this.rotulo, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numero, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        Text(rotulo, style: TextStyle(fontSize: 12),)
      ],
    );
  }
}