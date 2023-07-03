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
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: const TextField(
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
                      child: const Icon(Icons.inbox),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Today only",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "Up to 50% off",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text("Get now"),
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
                    margin: const EdgeInsets.only(top: 12),
                    height: 32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Center(
                            child: Text(
                              "Men Shop",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Center(
                            child: Text(
                              "Women Shop",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Center(
                            child: Text(
                              "Kids Shop",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 340,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              color: Colors.orange,
                              width: 240,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.brown[100],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        "4.9 (78 reviews)",
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Text("Title Title Title Title "),
                                  SizedBox(height: 8,),
                                  Text('\$125.65')
                                ],
                              ),
                            ),
                            Container(
                              // padding: EdgeInsets.symmetric(vertical: 16),
                              margin: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
                              color: Colors.orange,
                              width: 240,
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "Most popular",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        height: 340,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              color: Colors.orange,
                              width: 240,
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                            Container(
                              // padding: EdgeInsets.symmetric(vertical: 16),
                              margin: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
                              color: Colors.orange,
                              width: 240,
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
