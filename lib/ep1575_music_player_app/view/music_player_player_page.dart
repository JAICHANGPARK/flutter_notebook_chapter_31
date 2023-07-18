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
            bottom: 0,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    const Expanded(
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
                      icon: const Icon(
                        Icons.more_horiz,
                      ),
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
