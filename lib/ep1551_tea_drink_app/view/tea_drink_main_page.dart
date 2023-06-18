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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.abc),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
