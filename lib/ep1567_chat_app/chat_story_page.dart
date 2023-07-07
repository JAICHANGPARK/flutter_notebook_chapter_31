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
          Container(
            height: 240,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                    ),
                    Text(
                      "Dream Walker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 130,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(color: Colors.grey),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
