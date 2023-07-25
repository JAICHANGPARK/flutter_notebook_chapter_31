import 'package:flutter/material.dart';

class ApparelHomePage extends StatefulWidget {
  const ApparelHomePage({super.key});

  @override
  State<ApparelHomePage> createState() => _ApparelHomePageState();
}

class _ApparelHomePageState extends State<ApparelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
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
    );
  }
}
