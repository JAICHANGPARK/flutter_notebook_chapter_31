import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1560_banking_app/view/banking_home_page.dart';

void main() {
  runApp(const BankingApp());
}

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BankingHomePage(),
    );
  }
}
