import 'package:flutter/material.dart';

class ChatStoryPage extends StatefulWidget {
  const ChatStoryPage({super.key});

  @override
  State<ChatStoryPage> createState() => _ChatStoryPageState();
}

class _ChatStoryPageState extends State<ChatStoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Story",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        )
      ],
    );
  }
}
