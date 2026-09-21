import 'package:flutter/material.dart';
import 'package:instagram_cutecute/utils/mensagem_util.dart';
import 'package:instagram_cutecute/widgets/numero_perfil.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundColor: Colors.deepPurple,
                  child: Icon(Icons.person, color: Colors.white, size: 48,),
                ),
                SizedBox(width: 24,),
                Expanded(child: NumeroPerfil(numero: '9', rotulo: 'Publicações')),
                Expanded(child: NumeroPerfil(numero: '1.250', rotulo: 'Seguidores')),
                Expanded(child: NumeroPerfil(numero: '380', rotulo: 'Seguindo')),
              ],
            ),
            SizedBox(height: 14,),
            Text('Laví', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Estudano flutter, dart e desenvolvimento mobile ebaaaaaa\nQuem me protege num dorme não'),
            SizedBox(height: 14,),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: (){
                  mostrarMensagem(context, 'Editano perfil');
                },
                child: Text(
                  'Editar perfil'
                ),
              ),
            ),
            // GridView.builder(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemCount: 9,
            //   gridDelegate: gridDelegate,
            //   itemBuilder: itemBuilder
            // ),
          ],
        ),
      ),
    );
  }
}