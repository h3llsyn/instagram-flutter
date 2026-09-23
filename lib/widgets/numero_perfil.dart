import 'package:flutter/material.dart';

class NumeroPerfil extends StatelessWidget {
  final String numero;
  final String rotulo;

  const NumeroPerfil({super.key, required this.numero, required this.rotulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          numero,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 3),
        Text(
          rotulo,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}