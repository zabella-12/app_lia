import 'package:flutter/material.dart';

class _HomeScreenState extends State<HomeScreen> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [ ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _telas[0],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Minha conta")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              title: Text("Meus pedidos")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favoritos")
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
