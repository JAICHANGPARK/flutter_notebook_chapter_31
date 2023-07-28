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
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("Your Cart"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: Placeholder(),
            ),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
