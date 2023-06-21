import 'package:flutter/material.dart';

class TeaDrinkWidget extends StatelessWidget {
  const TeaDrinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Order",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
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
          margin: const EdgeInsets.only(top: 16),
          height: 72,
          color: Colors.blue,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          height: 84,
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
                child: Row(
                  children: [
                    Expanded(child: Column()),
                    Container(
                      width: 120,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            bottom: 16,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              
                            ),
                          ),
                          Positioned(
                            child: Container(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
