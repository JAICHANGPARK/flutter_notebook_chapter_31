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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login in to Dream's"),
              Text("Email"),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
