import 'package:flutter/material.dart';

class ECommerceDetailPage extends StatefulWidget {
  const ECommerceDetailPage({super.key});

  @override
  State<ECommerceDetailPage> createState() => _ECommerceDetailPageState();
}

class _ECommerceDetailPageState extends State<ECommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown[50],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 72,
                    right: 16,
                    bottom: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                            const Text("Back"),
                          ],
                        ),
                        const Row(
                          children: [
                            Text("5 in stock Nike"),
                            Icon(
                              Icons.verified,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        const Text("Flutter T-Shirt"),
                        const Row(
                          children: [
                            Icon(Icons.star),
                            Text("4.7"),
                            Text("Free Shipping"),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 64,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Size"),
                      Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: () {}, icon: const Icon(Icons.remove_circle)),
                            const Text("01"),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                        onPressed: () {},
                        child: const Text("S"),
                      )),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text("M"),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            foregroundColor: Colors.white
                          ),
                          child: const Text("L"),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text("XL"),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text("XXL"),
                        ),
                      ),
                    ],
                  ),
                  const Text("Product Details"),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
                  ),
                  const Divider(),
                  const Row(
                    children: [
                      CircleAvatar(),
                      Text("4.73 + people pinned this"),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 16,
        child: Container(
          height: 72,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "\$32.49",
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
