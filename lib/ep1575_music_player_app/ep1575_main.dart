import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1575_music_player_app/view/music_player_main_page.dart';

void main() {
  runApp(MusicPlayerApp());
}

class MusicPlayerApp extends StatelessWidget {
  const MusicPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicPlayerMainPage(),
    );
  }
}
