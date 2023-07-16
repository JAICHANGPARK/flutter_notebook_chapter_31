import 'package:flutter/material.dart';

class MusicPlayerSearchPage extends StatefulWidget {
  const MusicPlayerSearchPage({super.key});

  @override
  State<MusicPlayerSearchPage> createState() => _MusicPlayerSearchPageState();
}

class _MusicPlayerSearchPageState extends State<MusicPlayerSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            border: Border.all(
              color: Colors.grey[400]!,
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 16),
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "What do you want to listen to?",
              prefixIcon: Icon(Icons.search)
            ),
          ),
        )
      ],
    );
  }
}
