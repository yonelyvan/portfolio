import 'package:flutter/material.dart';

class SectionTools extends StatelessWidget {
  const SectionTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Tools & Workflow',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            '- Proficient in CI/CD pipelines using GitHub Actions.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),

          Text('- Version control with Git and GitHub, using Git Flow methodology.', style: TextStyle(fontSize: 16, height: 1.5)),
          Text(
            '- Experienced with collaborative platforms like GitHub, GitLab, and Bitbucket.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          Text(
            '- Effective use of Agile boards, issue tracking (Jira, Asana), and code reviews.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),

        ],
      ),
    );
  }
}
