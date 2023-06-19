import 'package:flutter/material.dart';

class TeaDrinkMainPage extends StatefulWidget {
  const TeaDrinkMainPage({super.key});

  @override
  State<TeaDrinkMainPage> createState() => _TeaDrinkMainPageState();
}

class _TeaDrinkMainPageState extends State<TeaDrinkMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 16,
              bottom: 0,
              right: 16,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Hi, Dream",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                        ),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 22,
                        child: const Icon(Icons.notifications_none),
                        foregroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 22,
                        child: const Icon(Icons.person_outline),
                        foregroundColor: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 84,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.wallet,
                                  ),
                                  foregroundColor: Colors.white,
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Wallet"),
                                        Text(
                                          "\$300",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: const Row(
                                    children: [
                                      Text("Scan"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(Icons.document_scanner_outlined)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 16),
                            height: 84,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey[300]!,
                                      ),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "65 Points",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Worth \$65",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey[300]!,
                                      ),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "0 Loyal ",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "TEA",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green
                                                  ),
                                                )
                                              ]
                                            )

                                          ),
                                          Text(
                                            "Worth \$65",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          const BottomNavigationBarItem(icon: Icon(Icons.emoji_events_outlined), label: "Rewards"),
          const BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Pay"),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.abc),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
