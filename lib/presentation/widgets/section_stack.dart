import 'package:flutter/material.dart';

class SectionStack extends StatelessWidget {
  const SectionStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      color: Colors.grey.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Tech Stack', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),

          // Mobile & Language
          Text('- Flutter & Dart expert with over 6 years of hands-on experience.'),
          Text('- Android SDK and Java fundamentals.'),

          // Architecture & State Management
          Text('- Clean Architecture practitioner.'),
          Text('- BLoC for state management, including Cubits and Bloc.'),

          // Backend & APIs
          Text('- RESTful API integration with Dio and Http.'),
          Text('- Firebase Suite: Authentication, Firestore, Cloud Messaging, Storage.'),
          Text('- AWS Cognito integration for secure authentication workflows.'),

          // UI/UX
          Text('- Pixel-perfect UI implementation based on Figma designs.'),
          Text('- Custom widgets, Slivers, animations, and responsiveness.'),
          Text('- SVG and vector support using flutter_svg.'),

          // Persistence & Caching
          Text('- Local storage with Hive, Shared Preferences, and Secure Storage.'),
          Text('- Image and multimedia caching strategies.'),

          // Testing
          Text('- Unit testing, integration testing, and golden tests.'),

          // DevOps & Workflow
          Text('- Git, GitHub, Git Flow.'),
          Text('- CI/CD with GitHub Actions and Bitrise.'),
          Text('- Agile methodologies with sprints and code reviews.'),

          // Tools
          Text('- Jira, Figma, Notion, Postman, and Android Studio.'),
        ],
      ),
    );
  }
}
