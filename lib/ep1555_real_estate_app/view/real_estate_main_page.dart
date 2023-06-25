import 'package:flutter/material.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({super.key});

  @override
  State<RealEstateMainPage> createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  int cardHeightPadding = 72;
  bool cardOpen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 16,
              top: 24,
              bottom: 0,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (!cardOpen) {
                        setState(() {
                          cardOpen = true;
                        });
                      }
                    },
                    child: const Row(
                      children: [
                        Text(
                          "HOMMIE",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Badge(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.notifications_none),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CircleAvatar(
                          radius: 24,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 350),
                          top: cardOpen ? 0 : 24,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.teal,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Current location",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Republic of Korea",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          cardOpen = !cardOpen;
                                          if (cardOpen) {
                                            cardHeightPadding = 0;
                                          } else {
                                            cardHeightPadding = 72;
                                          }
                                        });
                                      },
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.teal,
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          top: cardOpen ? 78 : 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          duration: const Duration(milliseconds: 350),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                topRight: Radius.circular(32),
                              ),
                            ),
                            child: Column(
                              children: [
                                const SearchBar(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Recommended For You",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.keyboard_arrow_right),
                                    )
                                  ],
                                ),
                                Expanded(
                                    child: ListView(
                                  children: [
                                    Container(
                                      height: 380,
                                      decoration: const BoxDecoration(
                                        color: Colors.pink,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                    color: Colors.orange,
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg"),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                color: Colors.white,
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "Squmir House",
                                                      style: TextStyle(fontSize: 18),
                                                    ),
                                                    const Row(
                                                      children: [
                                                        Icon(
                                                          Icons.location_on,
                                                          color: Colors.teal,
                                                        ),
                                                        Text("211 M Carpenter St. Chicago 123456"),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            color: Colors.grey[200],
                                                            borderRadius: BorderRadius.circular(24),
                                                          ),
                                                          padding: const EdgeInsets.symmetric(
                                                            horizontal: 16,
                                                            vertical: 8,
                                                          ),
                                                          child: const Text("🛏 4 🚗2 🛁 4"),
                                                        ),
                                                        const Spacer(),
                                                        const Text(
                                                          "\$512,00",
                                                          style: TextStyle(
                                                              // fontWeight: FontWeight.bold,
                                                              fontSize: 20),
                                                        ),
                                                        const Text("/12mo")
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          const Positioned(
                                            top: 160,
                                            bottom: 0,
                                            right: 8,
                                            child: CircleAvatar(
                                              radius: 32,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.teal,
                                              child: Icon(
                                                Icons.favorite,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 380,
                                      decoration: const BoxDecoration(
                                        color: Colors.pink,
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                    color: Colors.orange,
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg"),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                color: Colors.white,
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "Squmir House",
                                                      style: TextStyle(fontSize: 18),
                                                    ),
                                                    const Row(
                                                      children: [
                                                        Icon(
                                                          Icons.location_on,
                                                          color: Colors.teal,
                                                        ),
                                                        Text("211 M Carpenter St. Chicago 123456"),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            color: Colors.grey[200],
                                                            borderRadius: BorderRadius.circular(24),
                                                          ),
                                                          padding: const EdgeInsets.symmetric(
                                                            horizontal: 16,
                                                            vertical: 8,
                                                          ),
                                                          child: const Text("🛏 4 🚗2 🛁 4"),
                                                        ),
                                                        const Spacer(),
                                                        const Text(
                                                          "\$512,00",
                                                          style: TextStyle(
                                                              // fontWeight: FontWeight.bold,
                                                              fontSize: 20),
                                                        ),
                                                        const Text("/12mo")
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          const Positioned(
                                            top: 160,
                                            bottom: 0,
                                            right: 8,
                                            child: CircleAvatar(
                                              radius: 32,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.teal,
                                              child: Icon(
                                                Icons.favorite,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: Container(
                height: 80,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: StadiumBorder(),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(42),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 8,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.explore_outlined),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Badge(
                          child: Icon(
                            Icons.calendar_today,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
