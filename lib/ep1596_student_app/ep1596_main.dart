import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1596_student_app/view/student_onboarding_page.dart';

void main() {
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentOnboardingPage(),
    );
  }
}
