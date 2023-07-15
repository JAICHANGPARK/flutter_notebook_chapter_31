import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1575_music_player_app/view/music_player_home_page.dart';
import 'package:flutter_notebook_chapter_31/ep1575_music_player_app/view/music_player_search_page.dart';
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
        child: IndexedStack(
          index: menuIndex,
          children: [
            MusicPlayerHomePage(),
            MusicPlayerSearchPage(),
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
                    CircleAvatar(
                      radius: 4,
                      backgroundColor:
                          menuIndex == 2 ? Colors.blue : Colors.transparent,
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
