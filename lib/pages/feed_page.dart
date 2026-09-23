import 'package:flutter/material.dart';
import 'package:instagram_cutecute/widgets/post_instagram.dart';
import 'package:instagram_cutecute/widgets/stories.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'InstaAula',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.add_box_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.send_outlined),
          ),
        ],
      ),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Stories()),
          SliverToBoxAdapter(child: Divider(height: 1)),
          SliverToBoxAdapter(
            child: PostInstagram(
              usuario: 'flutter.dev',
              local: 'São Paulo, Brasil',
              legenda: 'Construindo interfaces incríveis com Flutter! 💕',
              cor: Color(0xFF42A5F5),
              icone: Icons.flutter_dash,
              curtidasInciais: 129,
            ),
          ),
          SliverToBoxAdapter(child: Divider(height: 1)),
          SliverToBoxAdapter(
            child: PostInstagram(
              usuario: 'professor.mobile',
              local: 'Osasco, Brasil',
              legenda: 'Pratique um pouco todos os dias.',
              cor: Color(0xFF7E57C2),
              icone: Icons.school,
              curtidasInciais: 86,
            ),
          ),
          SliverToBoxAdapter(child: Divider(height: 1)),
          SliverToBoxAdapter(
            child: PostInstagram(
              usuario: 'vitor.dev',
              local: 'Carapicuíba, Brasil',
              legenda: 'Grau e arte 💕',
              cor: Color(0xFF009688),
              icone: Icons.code,
              curtidasInciais: 2,
            ),
          ),
        ],
      ),
    );
  }
}