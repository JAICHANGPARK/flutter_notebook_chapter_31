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
          padding: EdgeInsets.fromLTRB(16.0, 42, 16, 16),
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
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Password",
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
                  hintText: "Enter your Password",
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password?"),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.black,
                height: 54,
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Stack(
                  children: [
                    Divider(
                      color: Colors.grey,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.white,
                        child: Text("or continue with"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
