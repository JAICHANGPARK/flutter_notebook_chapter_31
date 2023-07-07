import 'package:flutter/material.dart';

class ChatStoryPage extends StatefulWidget {
  const ChatStoryPage({super.key});

  @override
  State<ChatStoryPage> createState() => _ChatStoryPageState();
}

class _ChatStoryPageState extends State<ChatStoryPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Story",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(4),
            ),
            child: IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),

        ],
      ),
    );
  }
}
