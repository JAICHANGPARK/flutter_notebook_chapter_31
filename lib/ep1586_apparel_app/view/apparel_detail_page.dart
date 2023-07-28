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
            padding: EdgeInsets.fromLTRB(16, 64, 16, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey[300]!,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey[300]!,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.favorite_border),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: const Text(
                        "Flutter Shirt Flutter Shirt Flutter Shirt Flutter Shirt Flutter Shirt",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "\$120,00",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Subtitle Subtitle"),
                              SizedBox(height: 8,),
                              Text("Subtitle Subtitle"),
                              SizedBox(height: 8,),
                              Text("Subtitle Subtitle"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Subtitle Subtitle"),
                              SizedBox(height: 8,),
                              Text("Subtitle Subtitle"),
                              SizedBox(height: 8,),
                              Text("Subtitle Subtitle"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              padding: EdgeInsets.all(8),
                              child: const Row(
                                children: [
                                  Text(
                                    "Color",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    radius: 10,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                              ),
                              padding: EdgeInsets.all(8),
                              child: const Row(
                                children: [
                                  Text(
                                    "Size:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "S",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.black,
              ),
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
