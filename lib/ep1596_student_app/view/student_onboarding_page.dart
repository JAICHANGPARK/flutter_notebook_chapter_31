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
          Column(
            children: [
              Text("The only study app"),
              Text("you'll ever need"),
              Text("Upload class study materials, create electronic flashcards to study."),
            ],
          ),
          SizedBox(
            height: 42,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(42),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
            child: Text(
              "Let's start",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18
              ),
            ),
          )
        ],
      ),
    );
  }
}
