import 'package:flutter/material.dart';

class ECommerceMainPage extends StatefulWidget {
  const ECommerceMainPage({super.key});

  @override
  State<ECommerceMainPage> createState() => _ECommerceMainPageState();
}

class _ECommerceMainPageState extends State<ECommerceMainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text("Hi There!"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Popular Brand",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
    );
  }
}
