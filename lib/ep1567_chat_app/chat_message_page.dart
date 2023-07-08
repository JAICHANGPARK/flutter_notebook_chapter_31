import 'package:flutter/material.dart';

class Message {
  String? type;
}

class ChatMessage {
  String? name;
  String? message;
  String? time;
}


class ChatMessagePage extends StatefulWidget {
  const ChatMessagePage({super.key});

  @override
  State<ChatMessagePage> createState() => _ChatMessagePageState();
}

class _ChatMessagePageState extends State<ChatMessagePage> {
  List<ChatMessage> messages = [

  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
