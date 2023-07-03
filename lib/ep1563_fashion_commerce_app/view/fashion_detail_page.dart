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
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            padding: EdgeInsets.only(top: 48),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
          Row(
            children: [
              Text("Title Title Title Title Title"),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    Text("4.9"),
                  ],
                ),
              )
            ],
          ),
          Text("Size"),
          SizedBox(
            height: 32,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("S"),
                )
              ],
            ),
          ),
          Text("Color"),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
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
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Text("Description"),
          Text("~~~~~~"),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text("Price"),
                  Text("\$2,299.00"),
                ],
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32)
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag_outlined),
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
    );
  }
}
