import 'package:flutter/material.dart';

class BankingHomePage extends StatefulWidget {
  const BankingHomePage({super.key});

  @override
  State<BankingHomePage> createState() => _BankingHomePageState();
}

class _BankingHomePageState extends State<BankingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Column(
                  children: [],
                ))
          ],
        ),
      ),
    );
  }
}
