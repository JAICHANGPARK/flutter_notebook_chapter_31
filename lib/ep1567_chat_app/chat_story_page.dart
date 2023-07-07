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
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Story",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
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
          Container(
            margin: const EdgeInsets.only(top: 24, bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: "Search Story...",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
