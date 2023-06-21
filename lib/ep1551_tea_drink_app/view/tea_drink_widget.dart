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
                height: 130,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("Tea"),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Text("Dream Chai", style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 4,),
                        Text("\$1.0", style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                        Row(
                          children: [
                            ...List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      size: 12,
                                    )),
                            Text("4.5"),
                            Text('(1.5k)'),
                          ],
                        )
                      ],
                    )),
                    Container(
                      width: 110,
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
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            right: 16,
                            bottom: 0,
                            child: Container(
                              width: 84,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "ADD",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
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
