import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_31/ep1551_tea_drink_app/view/tea_drink_home_widget.dart';
import 'package:flutter_notebook_chapter_31/ep1551_tea_drink_app/view/tea_drink_widget.dart';

class TeaDrinkMainPage extends StatefulWidget {
  const TeaDrinkMainPage({super.key});

  @override
  State<TeaDrinkMainPage> createState() => _TeaDrinkMainPageState();
}

class _TeaDrinkMainPageState extends State<TeaDrinkMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              top: 16,
              bottom: 0,
              right: 16,
              child: IndexedStack(
                index: menuIndex,
                children: [
                  TeaDrinkHomeWidget(),
                  Container(),
                  TeaDrinkWidget(),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 32,
                      child: Container(
                        color: Colors.white,
                        child: const Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home_filled,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("Home"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("Search"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.emoji_events_outlined,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("Rewards"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.payment,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("Pay"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 8,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            menuIndex = 2;
                          });
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.green,
                              child: Icon(Icons.local_drink_outlined),
                              foregroundColor: Colors.white,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Drink")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     const BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
      //     const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      //     const BottomNavigationBarItem(icon: Icon(Icons.emoji_events_outlined), label: "Rewards"),
      //     const BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Pay"),
      //   ],
      //   type: BottomNavigationBarType.fixed,
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.abc),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
