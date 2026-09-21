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
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.black],
                begin: AlignmentGeometry.topCenter,
              ),
            ),
            child: Icon(
              Icons.play_circle,
              color: Colors.white54,
              size: 110,
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: Text(
              'Reels',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@flutter.dev',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  'Aprendendo Flutter de uma forma simples e prática',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 12,
            bottom: 80,
            child: Column(
              children: [
                BotaoReels(
                  icone: Icons.favorite_border,
                  texto: '2,5 mil',
                  aoTocar: (){
                    mostrarMensagem(context, 'Você curtiu');
                  }
                ),
                BotaoReels(
                  icone: Icons.mode_comment_outlined,
                  texto: '128',
                  aoTocar: (){
                    mostrarMensagem(context, 'Você comentou');
                  }
                ),
                BotaoReels(
                  icone: Icons.send,
                  texto: 'Compartilhar',
                  aoTocar: (){
                    mostrarMensagem(context, 'Você compartilhou');
                  }
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}