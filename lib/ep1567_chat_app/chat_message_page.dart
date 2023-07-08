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
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                  CircleAvatar(),
                  Expanded(
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
                    icon: Icon(Icons.videocam_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call_outlined),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              ),
            ),
            Container(
              height: 72,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
