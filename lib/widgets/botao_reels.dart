import 'package:flutter/material.dart';

class BotaoReels extends StatelessWidget {
  final IconData icone;
  final String texto;
  final VoidCallback aoTocar;

  const BotaoReels({
    super.key,
    required this.icone,
    required this.texto,
    required this.aoTocar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          IconButton(
            onPressed: aoTocar,
            icon: Icon(icone, color: Colors.white),
          ),
          Text(texto, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}