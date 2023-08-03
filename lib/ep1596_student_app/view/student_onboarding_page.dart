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
          )
        ],
      ),
    );
  }
}
