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
        child: Stack(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events_outlined), label: "Rewards"),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Pay"),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.abc),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
