import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MusicPlayerMainPage extends StatefulWidget {
  const MusicPlayerMainPage({super.key});

  @override
  State<MusicPlayerMainPage> createState() => _MusicPlayerMainPageState();
}

class _MusicPlayerMainPageState extends State<MusicPlayerMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Good Evening"),
        // titleTextStyle: TextStyle(
        //   fontWeight: FontWeight.bold,
        //   fontSize: 24,
        // ),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          const Badge(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.notifications_none,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "New Album",
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
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, bottom: 24, left: 8),
                              child: PhysicalModel(
                                color: Colors.white,
                                elevation: 16,
                                shadowColor: Colors.black,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  height: 120,
                                  width: 360,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Popular Song",
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
                      padding: const EdgeInsets.only(left: 16, top: 8),
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(right: 12, bottom: 16),
                              child: Container(
                                height: 120,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Popular Song",
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
                      padding: const EdgeInsets.only(left: 16, top: 8),
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(right: 12, bottom: 16),
                              child: Container(
                                height: 120,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Flutter Live Coding Podcast",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("Dreamwalker"),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.cast),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      barRadius: const Radius.circular(8),
                      progressColor: Colors.blue,
                      percent: 0.45,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 84,
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    menuIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: menuIndex == 0 ? Colors.black : Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor:
                          menuIndex == 0 ? Colors.blue : Colors.transparent,
                    )
                  ],
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    menuIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: menuIndex == 1 ? Colors.black : Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor:
                          menuIndex == 1 ? Colors.blue : Colors.transparent,
                    )
                  ],
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    menuIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: menuIndex == 2 ? Colors.black : Colors.grey,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    menuIndex = 3;
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.transparent,
                      // backgroundColor: Colors.blue,
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
