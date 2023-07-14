import 'package:flutter/material.dart';

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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Followed Artist",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("see all"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 84,
          child: const Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home_outlined),
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.blue,
                  )
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
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
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.transparent,
                  )
                ],
              )),
              Expanded(
                  child: Column(
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
              )),
            ],
          ),
        ),
      ),
    );
  }
}
