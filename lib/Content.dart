import 'package:flutter/material.dart';

import 'Login.dart';
import 'News.dart';
import 'main.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80, // Increase the AppBar height
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hola usuario', style: TextStyle(color: Colors.black)),
            Text('Conoce todas las novedades', style: TextStyle(color: Colors.black, fontSize: 12)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to profile section
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _GridItem(title: 'Destacados', icon: Icons.star),
          _GridItem(title: 'Noticias', icon: Icons.article),
          _GridItem(title: 'Lo nuevo', icon: Icons.new_releases),
          _GridItem(title: 'Anuncios', icon: Icons.announcement),
          // Add more _GridItem instances for additional items
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Noticias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Entrar',
          ),
        ],
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage(title: 'PRUEBA CALIBRE')),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewsPage()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          }
        },
      ),
    );
  }
}

class _GridItem extends StatefulWidget {
  final String title;
  final IconData icon;

  _GridItem({required this.title, required this.icon});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<_GridItem> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _isPressed ? Colors.red : Colors.red.withOpacity(0.4),
      child: InkWell(
        onTap: () {
          setState(() {
            _isPressed = !_isPressed;
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(widget.icon, size: 280.0, color: Colors.white.withOpacity(0.5)),
            Text(
              widget.title,
              style: TextStyle(
                color: Color(0xFF002C5D),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}