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
      backgroundColor: Color.fromRGBO(205, 198, 198, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(width: 4,),
                            CircleAvatar(
                              radius: 4,
                            ),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(width: 4,),
                            CircleAvatar(
                              radius: 4,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
