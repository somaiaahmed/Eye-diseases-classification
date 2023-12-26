import 'package:flutter/material.dart';
import 'package:math_research/pages/contactUsPage.dart';
import 'package:math_research/pages/futureWorkPage.dart';
import 'package:math_research/pages/mainPage.dart';
import 'package:math_research/pages/ourModelPage.dart';
import 'package:math_research/pages/protectionPage.dart';

void main() {
  runApp(const CataNova());
}

class CataNova extends StatelessWidget {
  const CataNova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Model': (context) => const ourModelPage(),
        'Protection': (context) => const protectionPage(),
        'Future Work': (context) => const futureWorkPage(),
        'About Us': (context) => const contactUsPage(),
      },
      debugShowCheckedModeBanner: false,
      home: const mainPage(),
    );
  }
}
