import 'package:flutter/material.dart';

class ECommerceMainPage extends StatefulWidget {
  const ECommerceMainPage({super.key});

  @override
  State<ECommerceMainPage> createState() => _ECommerceMainPageState();
}

class _ECommerceMainPageState extends State<ECommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("Hi There!"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: ""
          ),
        ],
      ),
    );
  }
}
