import 'package:flutter/material.dart';

class ApparelCartPage extends StatefulWidget {
  const ApparelCartPage({super.key});

  @override
  State<ApparelCartPage> createState() => _ApparelCartPageState();
}

class _ApparelCartPageState extends State<ApparelCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Container(
            height: 72,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(4),
            ),
          )
        ],
      ),
    );
  }
}
