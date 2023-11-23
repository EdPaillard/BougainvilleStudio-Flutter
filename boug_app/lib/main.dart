import 'package:boug_app/screens/resume_page.dart';
import 'package:flutter/material.dart';
import 'package:boug_app/screens/home_page.dart';

void main() => runApp(const Boug());

class Boug extends StatelessWidget {
  const Boug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
      routes: {
        '/login': (context) => const HomePage(),
        // '/loading': (context) => const LoadingScreen(),
        '/resume': (context) => const ResumePage(),
        // '/budget': (context) => const BudgetController(),
        // '/settings': (context) => const OptionsController(),
      },
    );
  }
}
