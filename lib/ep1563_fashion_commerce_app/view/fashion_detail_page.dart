import 'package:flutter/material.dart';

class FashionDetailPage extends StatefulWidget {
  const FashionDetailPage({super.key});

  @override
  State<FashionDetailPage> createState() => _FashionDetailPageState();
}

class _FashionDetailPageState extends State<FashionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 420,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            padding: const EdgeInsets.only(top: 48),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Title Title Title Title Title",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300]!,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                const Text(
                  "Size",
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 32,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                        ),
                        margin: EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: const Text(
                            "S",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.black),
                        margin: EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: const Text(
                            "M",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                        ),
                        margin: EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: const Text(
                            "L",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                        ),
                        margin: EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: const Text(
                            "XL",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                        ),
                        margin: EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: const Text(
                            "XXL",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                const Text("Color"),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 16),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 16),
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 16),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                const Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price"),
                          Text("\$2,299.00"),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
