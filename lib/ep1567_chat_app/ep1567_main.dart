import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1567_chat_app/chat_mobile_main_page.dart';

void main() {
  runApp(const ChatMobileApp());
}

class ChatMobileApp extends StatelessWidget {
  const ChatMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatMobileMainPage(),
    );
  }
}
