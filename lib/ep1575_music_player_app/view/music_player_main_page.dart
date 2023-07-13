import 'package:flutter/material.dart';

class MusicPlayerMainPage extends StatefulWidget {
  const MusicPlayerMainPage({super.key});

  @override
  State<MusicPlayerMainPage> createState() => _MusicPlayerMainPageState();
}

class _MusicPlayerMainPageState extends State<MusicPlayerMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 84,
          child: Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home),
                  SizedBox(height: 8,),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.blue,
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
