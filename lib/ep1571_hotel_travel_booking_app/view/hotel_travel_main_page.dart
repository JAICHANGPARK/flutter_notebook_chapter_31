import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelTravelMainPage extends StatefulWidget {
  const HotelTravelMainPage({super.key});

  @override
  State<HotelTravelMainPage> createState() => _HotelTravelMainPageState();
}

class _HotelTravelMainPageState extends State<HotelTravelMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "TripTrekssss",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200]!,
                ),
                borderRadius: BorderRadius.circular(32),
              ),
              child: const Row(
                children: [
                  Icon(CupertinoIcons.search),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Where to Stay?"),
                        Text("Hotels, Homes, Villas and more"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              color: Colors.red,
              height: 48,
              child: ListView(),
            ),
            Container(
              height: 160,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              menuIndex = idx;
            });
          },
          currentIndex: menuIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.language),
              label: "Explore",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.luggage),
              label: "Trip",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Saved",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
