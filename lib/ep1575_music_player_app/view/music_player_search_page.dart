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
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
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
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Flutter Live Coding"),
                    Text("EP"),
                    Icon(Icons.volume_up_outlined),
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
