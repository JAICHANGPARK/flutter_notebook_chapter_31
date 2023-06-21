import 'package:flutter/material.dart';


class TeaDrinkWidget extends StatelessWidget {
  const TeaDrinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Order",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey[300]!,
            ),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          height: 72,
          color: Colors.blue,
        ),
        Container(
          height: 72,
          padding: const EdgeInsets.symmetric(vertical: 16),
          color: Colors.blue,
        ),
        const Text(
          "RECOMMENDED",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, _) => const Divider(),
            itemBuilder: (context, index) {
              return Container(
                height: 140,
                color: Colors.blue,
              );
            },
          ),
        ),
      ],
    );
  }
}
