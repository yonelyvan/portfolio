import 'package:app/presentation/widgets/section_philosophy.dart';
import 'package:app/presentation/widgets/section_stack.dart';
import 'package:app/presentation/widgets/section_tools.dart';
import 'package:flutter/material.dart';

import '../widgets/section_contact.dart';
import '../widgets/section_home.dart';
import '../widgets/section_portfolio.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SectionHome(),
            SectionPortfolio(),
            SectionPhilosophy(),
            SectionTools(),
            SectionStack(),
            SectionContact(),
          ],
        ),
      ),
    );
  }
}
