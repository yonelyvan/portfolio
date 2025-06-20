import 'package:flutter/material.dart';

class SectionAbout extends StatelessWidget {
  const SectionAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/image.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            'About Me',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'I am a results-driven Mobile Developer with 6+ years of experience building high-quality Flutter apps. '
                'Holding a Computer Science degree with honors, I specialize in scalable, maintainable code, and cloud integrations (AWS). '
                'I thrive on solving complex problems, optimizing performance, and delivering seamless user experiences on both iOS and Android.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}
