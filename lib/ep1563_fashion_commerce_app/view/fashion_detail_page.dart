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
          )
        ],
      ),
    );
  }
}
