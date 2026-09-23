import 'package:flutter/material.dart';
import 'package:instagram_cutecute/widgets/numero_perfil.dart';
import 'package:instagram_cutecute/utils/mensagem_util.dart';

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
                  child: Icon(Icons.person, color: Colors.white, size: 48),
                ),
                SizedBox(width: 24),
                Expanded(
                  child: NumeroPerfil(numero: '9', rotulo: 'publicações'),
                ),
                Expanded(
                  child: NumeroPerfil(numero: '1.250', rotulo: 'seguidores'),
                ),
                Expanded(
                  child: NumeroPerfil(numero: '380', rotulo: 'seguindo'),
                ),
              ],
            ),
            const SizedBox(height: 18),
            const Text(
              'Lavíz',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Estudante de Flutter\nCriando interfaces e aprendendo todos os dias.',
              style: TextStyle(color: Colors.grey.shade700),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => mostrarMensagem(context, 'Editar perfil'),
                    child: const Text('Editar perfil'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Center(child: Icon(Icons.grid_on_outlined)),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                ),
                itemBuilder: (context, indice) {
                  const cores = [
                    Colors.deepPurple,
                    Colors.pink,
                    Colors.teal,
                    Colors.orange,
                    Colors.indigo,
                    Colors.redAccent,
                    Colors.blue,
                    Colors.green,
                    Colors.purple,
                  ];
                  const icones = [
                    Icons.code,
                    Icons.favorite,
                    Icons.flutter_dash,
                    Icons.school,
                    Icons.lightbulb_outline,
                    Icons.camera_alt_outlined,
                    Icons.laptop_mac,
                    Icons.emoji_events_outlined,
                    Icons.auto_awesome,
                  ];

                  return InkWell(
                    onTap: () =>
                        mostrarMensagem(context, 'Publicação ${indice + 1}'),
                    child: Container(
                      color: cores[indice],
                      child: Icon(
                        icones[indice],
                        color: Colors.white,
                        size: 46,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}