import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1567_chat_app/chat_story_page.dart';

class ChatMobileMainPage extends StatefulWidget {
  const ChatMobileMainPage({super.key});

  @override
  State<ChatMobileMainPage> createState() => _ChatMobileMainPageState();
}

class _ChatMobileMainPageState extends State<ChatMobileMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: menuIndex,
          children: [
            ChatListPage(),
            ChatStoryPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: menuIndex,
        onTap: (idx) {
          setState(() {
            menuIndex = idx;
          });
        },
        items: const [
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
