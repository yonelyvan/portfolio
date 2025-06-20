import 'package:flutter/material.dart';

class SectionPhilosophy extends StatelessWidget {
  const SectionPhilosophy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      color: Colors.grey.shade50,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Development Philosophy',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            '- I follow SOLID, KISS, and DRY principles to build clean, scalable, and maintainable code.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          Text(
            '- I use Clean Architecture to ensure strong separation of concerns and high code reusability.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          Text(
            '- I rely on the BLoC pattern for state management, promoting predictable and testable flows.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          Text(
            '- I value testing at every level: unit tests, integration tests.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          Text(
            '- I structure projects in a modular way, focusing on reusability and scalability.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),

        ],
      ),
    );
  }
}
