import 'package:flutter/material.dart';

class RealEstateDetailPage extends StatefulWidget {
  const RealEstateDetailPage({super.key});

  @override
  State<RealEstateDetailPage> createState() => _RealEstateDetailPageState();
}

class _RealEstateDetailPageState extends State<RealEstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Place details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 240,
                  color: Colors.blue,
                ),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Squmir House"),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.teal,
                            ),
                            Text("location title location title"),
                          ],
                        ),

                      ],
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 4,

                          )
                        ]
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.teal,
                      ),
                    )
                  ],
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
                horizontal: 16,
                vertical: 8,
              ),
              child: Row(
                children: [
                  const Text(
                    "\$521,00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    " /12 mo",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.teal,
                    ),
                    // height: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: const Center(
                      child: Text(
                        "Create Schedule",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
