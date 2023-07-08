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

  ChatMessage({this.profileImg, this.name, this.message, this.time, this.isSender});
}

class ChatMessagePage extends StatefulWidget {
  const ChatMessagePage({super.key});

  @override
  State<ChatMessagePage> createState() => _ChatMessagePageState();
}

class _ChatMessagePageState extends State<ChatMessagePage> {
  List<ChatMessage> messages = [
    ChatMessage(
      isSender: true,
      name: "",
      message: "Can't wait to see blahblsldjsald",
      time: "22:13",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 84,
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 28,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dreamwalker",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Flutter Typing.."),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
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
                padding: EdgeInsets.all(16),
                color: Colors.grey[300],
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final item = messages[index];
                    if (item.isSender ?? false) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text("You"),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                                color: Colors.blue,
                              ),
                              padding: EdgeInsets.all(8),
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
                      color: Colors.blue,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type here...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      color: Colors.blue,
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.emoji_emotions_outlined,
                      ),
                      color: Colors.blue,
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
