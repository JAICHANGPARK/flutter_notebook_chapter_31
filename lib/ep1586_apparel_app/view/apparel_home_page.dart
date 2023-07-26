import 'package:flutter/material.dart';

class ApparelHomePage extends StatefulWidget {
  const ApparelHomePage({super.key});

  @override
  State<ApparelHomePage> createState() => _ApparelHomePageState();
}

class _ApparelHomePageState extends State<ApparelHomePage> {
  int _menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 240,
            // decoration: const BoxDecoration(
            //   color: Colors.blue,
            // ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    color: Colors.brown[50],
                    child: const Stack(
                      children: [
                        Positioned(
                          left: 16,
                          top: 72,
                          bottom: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "June Special Sale",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text("Get 60% discount during\nour special month!"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 16,
                  right: 16,
                  child: PhysicalModel(
                    color: Colors.white,
                    elevation: 4,
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: "Search by categories, name, or brands.."),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 8,
                    bottom: 8
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Discover",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See All"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 280,
                  // decoration: const BoxDecoration(
                  //   color: Colors.blue,
                  // ),
                  padding: const EdgeInsets.only(left: 16),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 170,
                        margin: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Flutter Shirt",
                                ),
                                const Text("Shirt"),
                                const Text(
                                  "\$950.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text("\$1,500.00"),
                                    Container(
                                      child: const Text(
                                        "-49%",
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16,
                      top: 8,
                      bottom: 8
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Categories",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See All"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  color: Colors.blue,
                ),
              ],
            ),
          ))
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 84,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _menuIndex,
          onTap: (idx) {
            setState(() {
              _menuIndex = idx;
            });
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.bolt_outlined,
                ),
                label: "Promo"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: "Favorite"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "Your Cart"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
