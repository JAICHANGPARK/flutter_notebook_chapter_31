import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1563_fashion_commerce_app/view/fashion_main_page.dart';

void main() {
  runApp(const FashionCommerceApp());
}

class FashionCommerceApp extends StatelessWidget {
  const FashionCommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FashionMainPage(),
    );
  }
}
