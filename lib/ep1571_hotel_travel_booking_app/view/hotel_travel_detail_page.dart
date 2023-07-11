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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hotels",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                              5,
                              (index) => Container(
                                height: 8,
                                width: 24,
                                margin: EdgeInsets.symmetric(horizontal: 2),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Skip"),
                  )
                ],
              ),
            ),
            Text("Would you like to stay here?"),
            Text("Save hotels you like and get price alerts for greet deals!"),
            Expanded(child: Placeholder()),
            Divider(
              height: 0,
            ),
            Container(
              height: 84,
              decoration: BoxDecoration(),
              padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Text(
                        "Don't Like",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        "Save for 2,665 AED",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
