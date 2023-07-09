import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1571_hotel_travel_booking_app/view/hotel_travel_main_page.dart';

void main() {
  runApp(const HotelTravelBookingApp());
}

class HotelTravelBookingApp extends StatelessWidget {
  const HotelTravelBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HotelTravelMainPage(),
    );
  }
}
