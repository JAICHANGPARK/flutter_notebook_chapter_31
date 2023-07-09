import 'package:flutter/material.dart';

class HotelTravelMainPage extends StatefulWidget {
  const HotelTravelMainPage({super.key});

  @override
  State<HotelTravelMainPage> createState() => _HotelTravelMainPageState();
}

class _HotelTravelMainPageState extends State<HotelTravelMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {},
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
    );
  }
}
