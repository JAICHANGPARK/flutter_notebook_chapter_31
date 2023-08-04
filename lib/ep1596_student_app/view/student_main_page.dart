import 'package:flutter/material.dart';

class StudentMainPage extends StatefulWidget {
  const StudentMainPage({super.key});

  @override
  State<StudentMainPage> createState() => _StudentMainPageState();
}

class _StudentMainPageState extends State<StudentMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [],
              ),
            ),
            Positioned(
              bottom: 24,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.home_filled,
                            ),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.calendar_month,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 54,
                    width: 54,
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
