import 'package:flutter/material.dart';

class ApparelDetailPage extends StatefulWidget {
  const ApparelDetailPage({super.key});

  @override
  State<ApparelDetailPage> createState() => _ApparelDetailPageState();
}

class _ApparelDetailPageState extends State<ApparelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 520,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Flutter Shirt Flutter Shirt Flutter Shirt Flutter Shirt Flutter Shirt"),
                  Text("\$120,00"),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text("Subtitle Subtitle"),
                            Text("Subtitle Subtitle"),
                            Text("Subtitle Subtitle"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("Subtitle Subtitle"),
                            Text("Subtitle Subtitle"),
                            Text("Subtitle Subtitle"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.grey[200]!,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text("Color"),
                              CircleAvatar(),
                              Icon(
                                Icons.keyboard_arrow_down,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.grey[200]!,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text("Size:"),
                              Text("S"),
                              Icon(
                                Icons.keyboard_arrow_down,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Row(
          children: [
            const Column(
              children: [
                Text("Size"),
                Text("\$120,00"),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(4),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.black),
              child: const Text(
                "Buy Now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
