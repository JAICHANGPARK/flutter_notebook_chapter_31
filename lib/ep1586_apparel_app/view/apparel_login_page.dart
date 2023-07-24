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
              const Text(
                "Login in to Dream's",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Enter your Email",
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Enter your Password",
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Forgot Password?"),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.black,
                height: 54,
                child: const Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Stack(
                  children: [
                    const Divider(
                      color: Colors.grey,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.white,
                        child: const Text("or continue with"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 42),
                ),
                child: Text("Continue with Facebook"),
              ), SizedBox(
                height: 8,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Continue with Google"),
              ), SizedBox(
                height: 8,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Continue with Apple ID"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
