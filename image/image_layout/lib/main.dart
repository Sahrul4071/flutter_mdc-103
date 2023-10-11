import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Flutter McFlutter,",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                  Text("Experienced App Deveploper",
                      style: TextStyle(fontSize: 15)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("123 Main Street", style: TextStyle(fontSize: 24)),
              Text("(415) 555-0198", style: TextStyle(fontSize: 24)),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.accessibility, size: 50),
              Icon(Icons.timer, size: 50),
              Icon(Icons.phone_android, size: 50),
              Icon(Icons.phone_iphone, size: 50),
            ],
          )
        ],
      )),
    ));
  }
}
