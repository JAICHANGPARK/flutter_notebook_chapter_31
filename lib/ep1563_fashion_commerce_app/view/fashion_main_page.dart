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
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(32),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            icon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey[200]!,
                      foregroundColor: Colors.grey,
                      child: Icon(Icons.inbox),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text("Today only"),
                  Text("Up to 50% off"),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Text(
                      "Get now",
                    ),
                  )
                ],
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
