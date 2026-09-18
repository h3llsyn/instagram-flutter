import 'package:flutter/material.dart';
import 'package:instagram_cutecute/pages/buscar_page.dart';
import 'package:instagram_cutecute/pages/feed_page.dart';
import 'package:instagram_cutecute/pages/perfil_page.dart';
import 'package:instagram_cutecute/pages/reels_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int indiceAtual = 0;

  final List<Widget> telas = const [
    FeedPage(),
    BuscarPage(),
    ReelsPage(),
    PerfilPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indiceAtual,
        children: telas,
      ),
      bottomNavigationBar: NavigationBar(
        height: 68,
        backgroundColor: Colors.white,
        indicatorColor: Colors.pink.shade50,
        selectedIndex: indiceAtual,
        onDestinationSelected: (novoIndice){
          setState(() {
            indiceAtual = novoIndice;
          });
        },
        destinations: const[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, size: 30,),
            label: 'Início'
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search, size: 30,),
            label: 'Buscar'
          ),
          NavigationDestination(
            icon: Icon(Icons.movie_outlined),
            selectedIcon: Icon(Icons.movie, size: 30,),
            label: 'Reels'
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            selectedIcon: Icon(Icons.person_2, size: 30,),
            label: 'Perfil'
          ),
        ]
      ),
    );
  }
}