import 'package:flutter/material.dart';

class SplitBillHomePage extends StatefulWidget {
  const SplitBillHomePage({super.key});

  @override
  State<SplitBillHomePage> createState() => _SplitBillHomePageState();
}

class _SplitBillHomePageState extends State<SplitBillHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 198, 198, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.black,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 72,
                      height: 46,
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              child: Badge(
                                child: Icon(
                                  Icons.notifications_none,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            bottom: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              child: Icon(Icons.search),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        border: Border.all(),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: const Text("My Balance"),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                          border: Border.all(),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "\$20,505.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 280,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "Pending Bills",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 220,
                              margin: EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -48,
                      top: 32,
                      bottom: 24,
                      child: Transform.rotate(
                        angle: -0.2,
                        child: Container(
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Nearby Friends",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                height: 84,
                padding: EdgeInsets.only(left: 16),
                // color: Colors.blue,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 34,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.person_2_outlined,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Stack(
                          children: List.generate(
                        10,
                        (index) => Positioned(
                          left: index * 54,
                          top: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 24,
                            ),
                          ),
                        ),
                      ).toList()),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recent Payments",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("See All"),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                  10,
                  (index) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 12,
                    ),
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: index == 0 ? Colors.white : Colors.black,
                      ),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 24,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Festive Celebration"),
                                  Text("\$100.00"),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Text("22 Dec 22"),
                                  Spacer(),
                                  Icon(
                                    Icons.person_2_outlined,
                                    size: 12,
                                  ),
                                  Text("4 Persons"),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
