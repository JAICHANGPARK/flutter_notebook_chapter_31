import 'package:flutter/material.dart';

class ChatMobileMainPage extends StatefulWidget {
  const ChatMobileMainPage({super.key});

  @override
  State<ChatMobileMainPage> createState() => _ChatMobileMainPageState();
}

class _ChatMobileMainPageState extends State<ChatMobileMainPage> {
  @override
  Widget build(BuildContext context) {
    int menuIndex = 0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Chat",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.camera_alt_outlined),
                      onPressed: () {},
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: IconButton(
                      color: Colors.blue,
                      icon: Icon(Icons.edit_square),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces),
            label: "Story",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: "Group",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
