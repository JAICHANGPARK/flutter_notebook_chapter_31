import 'package:flutter/material.dart';

class SplitBillPage extends StatefulWidget {
  const SplitBillPage({super.key});

  @override
  State<SplitBillPage> createState() => _SplitBillPageState();
}

class _SplitBillPageState extends State<SplitBillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      splashRadius: 24,
                      iconSize: 24,
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Split Bill",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_2_outlined,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("Total Bill"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "\$1200.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Text("Birthday Party!"),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 48,
              width: 140,
              // width: double.infinity,
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 1.5),
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(),
                      ),
                    ),
                    Positioned(
                      left: 32,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 1.5),
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(),
                      ),
                    ),
                    Positioned(
                      left: 32 + 32,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 1.5),
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(),
                      ),
                    ),
                    Positioned(
                      left: 32 + 32 + 32,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 1.5),
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Lisa"),
                          SizedBox(
                            height: 12,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(64),
                                border: Border.all(),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 64,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   // color: Colors.red,
                                      //   borderRadius: BorderRadius.circular(64),
                                      // ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            bottom: 8,
                                            left: 0,
                                            right: 0,
                                            top: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.orange,
                                                borderRadius: BorderRadius.circular(64),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  border: Border.all(
                                                    color: Colors.red,
                                                  ),
                                                  borderRadius: BorderRadius.circular(8)
                                                ),
                                                child: Icon(Icons.unfold_more),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text("Lisa"),
                        SizedBox(
                          height: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(64),
                              border: Border.all(),
                            ),
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text("Lisa"),
                        SizedBox(
                          height: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(64),
                              border: Border.all(),
                            ),
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text("Lisa"),
                        SizedBox(
                          height: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(64),
                              border: Border.all(),
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Container(
              height: 54,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              margin: EdgeInsets.only(bottom: 32, top: 32),
            )
          ],
        ),
      ),
    );
  }
}
