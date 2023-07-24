import 'package:flutter/material.dart';

class ApparelLoginPage extends StatefulWidget {
  const ApparelLoginPage({super.key});

  @override
  State<ApparelLoginPage> createState() => _ApparelLoginPageState();
}

class _ApparelLoginPageState extends State<ApparelLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 42, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login in to Dream's",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Enter your Email",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
