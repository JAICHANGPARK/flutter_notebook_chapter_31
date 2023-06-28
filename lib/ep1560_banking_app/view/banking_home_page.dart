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
                children: [
                  Container(
                    height: 360,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.brown[50],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              top: 16,
              bottom: 8,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1)
                      ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.white.withOpacity(0.2),
                            ),
                            Text("Dream"),
                            Icon(
                              Icons.arrow_forward,
                            )
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white.withOpacity(0.2),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
