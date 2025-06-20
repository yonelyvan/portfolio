import 'package:flutter/material.dart';

class ProjectDetailPage extends StatelessWidget {
  final String title = "Proyecto Innovador";
  final String description =
      "Este proyecto es una aplicación innovadora que conecta a los usuarios con servicios locales de manera eficiente y rápida. Con una interfaz limpia y sencilla, el usuario puede encontrar lo que necesita en pocos pasos.";
  final String technologies =
      "Flutter, Dart, Firebase, API RESTful, Material Design";
  final String image = 'assets/images/image.jpg'; // Imagen del proyecto
  final String link = 'https://www.ejemplo.com'; // Enlace al proyecto
  final List<String> screenshots = [
    'assets/images/image.jpg',
    'assets/images/image.jpg',
    'assets/images/image.jpg'
  ]; // Capturas de pantalla

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagen principal
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              const SizedBox(height: 24),

              // Título
              Text(
                title,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),

              // Descripción del proyecto
              Text(
                description,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),

              // Tecnologías utilizadas
              Text(
                'Tecnologías utilizadas:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                technologies,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 24),

              // Capturas de pantalla
              Text(
                'Capturas de pantalla:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              // Galería de capturas de pantalla
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: screenshots.map((screenshot) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          screenshot,
                          width: 320,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 24),

              // Botón de enlace
              if (link.isNotEmpty)
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Lógica para abrir el enlace
                    },
                    child: Text('Ver en el navegador'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 24,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
