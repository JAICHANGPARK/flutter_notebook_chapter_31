import 'package:flutter/material.dart';

class FashionMainPage extends StatefulWidget {
  const FashionMainPage({super.key});

  @override
  State<FashionMainPage> createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 48,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(32)
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const CircleAvatar(
                      radius: 24,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 160,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16, 0, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "New Arrival",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 64,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
             Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Placeholder(),
            ))
          ],
        ),
      ),
    );
  }
}
