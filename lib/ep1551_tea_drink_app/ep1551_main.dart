import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1551_tea_drink_app/view/tea_drink_main_page.dart';

void main() {
  runApp(TeaDrinkApp());
}

class TeaDrinkApp extends StatelessWidget {
  const TeaDrinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TeaDrinkMainPage(),
    );
  }
}
