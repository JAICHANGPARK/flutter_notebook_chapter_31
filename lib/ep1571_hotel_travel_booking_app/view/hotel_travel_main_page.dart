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
          children: [

          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),
    );
  }
}
