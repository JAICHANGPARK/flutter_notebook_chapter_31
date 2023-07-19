import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1581_e_commerce_app_ui/view/e_commerce_main_page.dart';

void main() {
  runApp(ECommerceAppUI());
}

class ECommerceAppUI extends StatefulWidget {
  const ECommerceAppUI({super.key});

  @override
  State<ECommerceAppUI> createState() => _ECommerceAppUIState();
}

class _ECommerceAppUIState extends State<ECommerceAppUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ECommerceMainPage(),
    );
  }
}
