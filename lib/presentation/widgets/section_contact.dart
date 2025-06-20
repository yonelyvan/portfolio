import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionContact extends StatelessWidget {
  const SectionContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      color: Colors.grey.shade100,
      child: Column(
        children: [
          const Text(
            'Contact',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () =>
                launchUrl(Uri.parse('mailto:your.email@example.com')),
            child: const Text('Send an Email'),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () =>
                    launchUrl(Uri.parse('https://linkedin.com/in/yonelyvan')),
                child: const Text('LinkedIn'),
              ),
              TextButton(
                onPressed: () =>
                    launchUrl(Uri.parse('https://github.com/yonelyvan')),
                child: const Text('GitHub'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
