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
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    color: Colors.pink,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 8,
                          top: 72,
                          bottom: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jine Special Sale",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
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
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextField(
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
          SizedBox(
            height: 16,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Categories"),
                      TextButton(
                        onPressed: () {},
                        child: Text("See All"),
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
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bolt_outlined,
                ),
                label: "Promo"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "Your Cart"),
            BottomNavigationBarItem(
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
