import 'package:flutter/material.dart';

class MusicPlayerPlayerPage extends StatefulWidget {
  const MusicPlayerPlayerPage({super.key});

  @override
  State<MusicPlayerPlayerPage> createState() => _MusicPlayerPlayerPageState();
}

class _MusicPlayerPlayerPageState extends State<MusicPlayerPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Container()),
          Positioned(
            top: 72,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Playing from"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Flutter Live",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )
                        ],
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
                Container(
                  height: 400,
                  margin: EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Flutter Widgets"),
                          Text("Dreamwalker"),
                        ],
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
