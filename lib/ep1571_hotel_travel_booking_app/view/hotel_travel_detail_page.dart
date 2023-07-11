import 'package:flutter/material.dart';

class HotelTravelDetailPage extends StatefulWidget {
  const HotelTravelDetailPage({super.key});

  @override
  State<HotelTravelDetailPage> createState() => _HotelTravelDetailPageState();
}

class _HotelTravelDetailPageState extends State<HotelTravelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                Expanded(
                  child: Column(
                    children: [
                      Text("Hotels"),
                      Row(
                        children: [
                          ...List.generate(
                            5,
                                (index) => Container(
                              height: 8,
                              width: 24,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
