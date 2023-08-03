import 'package:flutter/material.dart';

class StudentOnboardingPage extends StatefulWidget {
  const StudentOnboardingPage({super.key});

  @override
  State<StudentOnboardingPage> createState() => _StudentOnboardingPageState();
}

class _StudentOnboardingPageState extends State<StudentOnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          SizedBox(height: 42,),
          Column(
            children: [
              Text(
                "The only study app",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "you'll ever need",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Upload class study materials, create\nelectronic flashcards to study.",
                style: TextStyle(height: 1.5),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 38, bottom: 24),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(42),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Text(
              "Let's start",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
