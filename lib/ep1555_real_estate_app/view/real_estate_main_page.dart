import 'package:flutter/material.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({super.key});

  @override
  State<RealEstateMainPage> createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 16,
              top: 24,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("HOMMIE", style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),),
                      CircleAvatar(

                        radius: 24,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Badge(
                          child: Icon(Icons.notifications_none),
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      CircleAvatar(),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
