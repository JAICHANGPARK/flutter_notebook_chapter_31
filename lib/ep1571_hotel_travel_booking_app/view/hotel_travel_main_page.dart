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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("TripTrekssss"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none,
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200]!,
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
            BottomNavigationBarItem(
              icon: Icon(Icons.language),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.luggage),
              label: "Trip",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Saved",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
