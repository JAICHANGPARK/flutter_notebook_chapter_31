import 'dart:ui';

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
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2023/07/08/09/53/monastery-8114076_1280.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 10,
                ),
                child: Container(
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
            ),
          ),
          Positioned(
            top: 72,
            left: 16,
            right: 16,
            bottom: 0,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      color: Colors.white,
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Text("Playing from",style: TextStyle(
                            color: Colors.white
                          ),),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Flutter Live",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  height: 400,
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Flutter Widgets"),
                          Text("Dreamwalker"),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                SliderTheme(
                  data: SliderThemeData(
                    overlayShape: SliderComponentShape.noOverlay,
                  ),
                  child: Slider(
                    value: 0.3,
                    onChanged: (v) {},
                    inactiveColor: Colors.grey,
                    activeColor: Colors.blue,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("0:30"),
                    Text("-1:48"),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.skip_previous)),
                    const CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.play_circle),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.skip_next)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle)),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 64,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "Lyrics",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.ios_share),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.open_in_full),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
