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
  final List<Widget> paginas = const [
    FeedPage(),
    BuscarPage(),
    ReelsPage(),
    PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indiceAtual,
        children: paginas,
      ),
      
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: const Color(0xFFFCE4EC),
        labelTextStyle: WidgetStatePropertyAll(
          TextStyle(color: Colors.black87),
        ),
        
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: Colors.black87),
            selectedIcon: Icon(Icons.home, color: Colors.black87),
            label: 'Início',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined, color: Colors.black87),
            selectedIcon: Icon(Icons.search, color: Colors.black87),
            label: 'Buscar',
          
          ),
          NavigationDestination(
            icon: Icon(Icons.movie_outlined, color: Colors.black87),
            selectedIcon: Icon(Icons.movie, color: Colors.black87),
            label: 'Reels',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline, color: Colors.black87),
            selectedIcon: Icon(Icons.person, color: Colors.black87),
            label: 'Perfil',
          ),
        ],
        selectedIndex: indiceAtual,
        onDestinationSelected: (novoIndice) {
          setState(() {
            indiceAtual = novoIndice;
          });
        },
      ),
    );
  }
}