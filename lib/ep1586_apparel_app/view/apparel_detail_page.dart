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
            Column(
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
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.black),
              child: Text(
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
