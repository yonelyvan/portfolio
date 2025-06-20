import 'package:flutter/material.dart';

class SectionHome extends StatelessWidget {
  const SectionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Yonel Mamani",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            "Mobile Developer",
            style: TextStyle(fontSize: 20, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}