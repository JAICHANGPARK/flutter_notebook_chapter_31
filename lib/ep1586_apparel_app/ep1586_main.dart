import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1586_apparel_app/view/apparel_login_page.dart';

void main() {
  runApp(const ApparelApp());
}

class ApparelApp extends StatelessWidget {
  const ApparelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ApparelLoginPage(),
    );
  }
}
