import 'package:app/presentation/pages/app_detail.dart';
import 'package:app/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portfolio',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,

      //home: const HomePage(),
      home: const AppDetail(),
    );
  }
}
