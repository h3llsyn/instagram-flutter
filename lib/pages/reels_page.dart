import 'package:flutter/material.dart';
import 'package:instagram_cutecute/utils/mensagem_util.dart';
import 'package:instagram_cutecute/widgets/botao_reels.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const Icon(
              Icons.play_circle,
              color: Colors.white54,
              size: 120,
            ),
          ),
          const Positioned(
            top: 16,
            left: 16,
            child: Text(
              'Reels',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            left: 16,
            right: 80,
            bottom: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@flutter.dev',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Aprendendo Flutter de uma forma simples e prática',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8,
            bottom: 20,
            child: Column(
              children: [
                BotaoReels(
                  icone: Icons.favorite_border,
                  texto: '128',
                  aoTocar: () => mostrarMensagem(context, 'Você curtiu o reel'),
                ),
                BotaoReels(
                  icone: Icons.mode_comment_outlined,
                  texto: '12',
                  aoTocar: () => mostrarMensagem(context, 'Abrir comentários'),
                ),
                BotaoReels(
                  icone: Icons.send_outlined,
                  texto: 'Enviar',
                  aoTocar: () => mostrarMensagem(context, 'Compartilhar reel'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}