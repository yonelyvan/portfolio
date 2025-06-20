import 'package:app/presentation/pages/app_detail.dart';
import 'package:flutter/material.dart';

class SectionPortfolio extends StatelessWidget {
  const SectionPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'Hanging Cat',
        'description':
            'Juego de adivinanza de palabras para iOS desarrollado en Swift, con integración de AdMob.',
        'technologies': 'Swift, UIKit, AdMob',
        'image': 'assets/images/image.jpg',
        'link':
            'https://apps.apple.com/pe/app/hanging-cat/id6472618438?l=en-GB',
      },
      {
        'title': 'Stress Detector',
        'description':
            'Aplicación móvil que monitorea el nivel de estrés del usuario utilizando señales fisiológicas.',
        'technologies': 'Flutter, Python, Keras, Flask, Arduino, AI',
        'image': 'assets/images/image.jpg',
        'link': 'https://github.com/yonelyvan/stressDetection',
      },
      {
        'title': 'Aplicaciones Personales',
        'description':
            'Más de 10 aplicaciones desarrolladas y publicadas en las tiendas de aplicaciones, destacando una con más de 100k descargas.',
        'technologies': 'Flutter, Dart, Clean Architecture, AdMob',
        'image': 'assets/images/image.jpg',
        'link':
            'https://play.google.com/store/apps/dev?id=4664947167065952335&hl=en',
      },
      {
        'title': 'GrowBy',
        'description':
            'Desarrollo de aplicaciones móviles utilizando Flutter y BLoC, integrando AWS Cognito y prácticas de programación limpias.',
        'technologies': 'Flutter, BLoC, AWS Cognito, AWS Amplify, REST API',
        'image': 'assets/images/image.jpg',
        'link': '',
      },
      {
        'title': 'Atik Soluciones',
        'description':
            'Optimización del rendimiento de aplicaciones, integración de pagos en línea y mantenimiento post-lanzamiento.',
        'technologies': 'Flutter, GetX, Stripe, AWS S3, REST API',
        'image': 'assets/images/image.jpg',
        'link': '',
      },
      {
        'title': 'Kusisqa Project',
        'description':
            'Desarrollo de una aplicación móvil para detectar niveles de estrés utilizando señales fisiológicas y modelos de aprendizaje automático.',
        'technologies': 'Flutter, Python, Keras, Flask, Arduino, AI',
        'image': 'assets/images/image.jpg',
        'link': 'https://github.com/yonelyvan/stressDetection',
      },
      {
        'title': 'Holacliente',
        'description':
            'Desarrollo de aplicaciones móviles para diversos clientes, mejorando la calidad del código y facilitando la incorporación de nuevos desarrolladores.',
        'technologies': 'Ionic, Java, Android, iOS',
        'image': 'assets/images/image.jpg',
        'link': '',
      },
      {
        'title': 'Gerware',
        'description':
            'Desarrollo de páginas web para diferentes clientes, introduciendo Git y GitHub para el control de versiones.',
        'technologies': 'PHP, JavaScript, HTML, CSS, CakePHP, MySQL',
        'image': 'assets/images/image.jpg',
        'link': '',
      },
      {
        'title': 'Pierre Laplace Academy',
        'description':
            'Diseño e implementación de software para la gestión de horarios de profesores, con soporte y mejoras durante 3 años.',
        'technologies': 'Java, MySQL, Eclipse GUI',
        'image': 'assets/images/image.jpg',
        'link': '',
      },
    ];

    return Container(
      padding: const EdgeInsets.all(32),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Portafolio',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: projects.map((project) {
              return SizedBox(
                width: 350,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16)),
                        child: Image.asset(project['image']!,
                            fit: BoxFit.cover,
                            height: 180,
                            width: double.infinity),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              project['title']!,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              project['description']!,
                              style: const TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Tecnologías: ${project['technologies']}',
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.grey),
                            ),
                            const SizedBox(height: 12),
                            if (project['link'] != null &&
                                project['link']!.isNotEmpty)
                              ElevatedButton(
                                onPressed: () {
                                  // Implementa la lógica para abrir el enlace

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      //builder: (context) => ProjectDetailPage(),
                                      builder: (context) => AppDetail(),
                                    ),
                                  );
                                },
                                child: const Text('Ver Proyecto'),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
