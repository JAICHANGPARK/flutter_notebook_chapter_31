import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1591_split_bill_app/view/split_bill_home_page.dart';

void main() {
  runApp(SplitBillApp());
}

class SplitBillApp extends StatelessWidget {
  const SplitBillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplitBillHomePage(),
    );
  }
}
