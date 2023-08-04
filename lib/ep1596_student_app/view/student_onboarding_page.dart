import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1596_student_app/view/student_main_page.dart';

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
          Expanded(
            child: Image.network(
              "https://img.freepik.com/free-vector/group-of-young-people-posing-for-a-photo_52683-18824.jpg?w=1060&t=st=1691056017~exp=1691056617~hmac=cd240178625ba45e7d53a0a0baf27c823065e60f2beb937fe5bc27cb0a08327d",
              fit: BoxFit.fitHeight,
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          const Column(
            children: [
              Text(
                "The only study app",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
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
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => StudentMainPage(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 38, bottom: 24),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(42),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 18,
              ),
              child: const Text(
                "Let's start",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
