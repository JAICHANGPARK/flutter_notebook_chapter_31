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
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "What do you want to listen to?", prefixIcon: Icon(Icons.search)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Followed Artist",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("see all"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
            height: 54 + 8 + 24,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Dream"),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2016/08/11/23/55/trees-1587301_1280.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Flutter Live Coding ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      " EP",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.volume_up_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 4,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter Live Coding",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Dreamwalker",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline_rounded),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz),
                      color: Colors.white,
                    ),
                    const Spacer(),
                    const Text(
                      "2023 ",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      "50 episode",
                      style: TextStyle(color: Colors.white),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.play_arrow),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
