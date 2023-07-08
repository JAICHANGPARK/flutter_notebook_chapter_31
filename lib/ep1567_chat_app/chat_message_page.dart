import 'package:flutter/material.dart';

class Message {
  String? type;
}

class ChatMessage {
  String? profileImg;
  String? name;
  String? message;
  String? time;
  bool? isSender;
}

class ChatMessagePage extends StatefulWidget {
  const ChatMessagePage({super.key});

  @override
  State<ChatMessagePage> createState() => _ChatMessagePageState();
}

class _ChatMessagePageState extends State<ChatMessagePage> {
  List<ChatMessage> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 72,
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  const CircleAvatar(),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dreamwalker"),
                        Text("Flutter Typing.."),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.videocam_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.call_outlined),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final item = messages[index];
                    if (item.isSender ?? false) {
                      return Container(
                        child: Column(
                          children: [
                            Text("You"),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                color: Colors.blue,
                              ),
                              child: Text("${item.message}"),
                            ),
                            Text("${item.time}")
                          ],
                        ),
                      );
                    }
                    return Container(
                      child: const Row(
                        children: [],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 84,
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[200]!, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic_none_outlined,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type here...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.emoji_emotions_outlined),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
