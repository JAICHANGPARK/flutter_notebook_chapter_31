import 'package:flutter/material.dart';

class ChatMobileMainPage extends StatefulWidget {
  const ChatMobileMainPage({super.key});

  @override
  State<ChatMobileMainPage> createState() => _ChatMobileMainPageState();
}

class _ChatMobileMainPageState extends State<ChatMobileMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chat",
          ),
        ],
      ),
    );
  }
}
