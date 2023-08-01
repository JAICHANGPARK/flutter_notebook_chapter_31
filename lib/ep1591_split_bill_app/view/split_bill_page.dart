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
            Container(
              height: 48,
              width: 180,
              child: Stack(
                children: [
                  Positioned(
                    left: 26,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.red,
                            width: 1.5
                        ),
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          width: 1.5
                        ),
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
