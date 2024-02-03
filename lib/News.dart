import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todas las noticias'),
      ),
      body: ListView(
        children: [
          _buildNewsItem(context, 'Anuncio Importante'),
          _buildNewsItem(context, 'Nuevas medidas de seguridad'),
          _buildNewsItem(context, 'Nuevos horarios de trabajo'),
          _buildNewsItem(context, 'Nuevas políticas de la empresa'),
          _buildNewsItem(context, 'Recuerde activar las notificaciones'),
          
          // Add more _buildNewsItem calls for additional news items
        ],
      ),
    );
  }

  Widget _buildNewsItem(BuildContext context, String title) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset('assets/Grupo_111.png'), // Replace with your actual image
        title: Text(title),
        trailing: IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            // Handle onTap for this news item
          },
        ),
      ),
    );
  }
}