import 'package:flutter/material.dart';
import 'package:flutter_mdc101/home.dart';
import 'package:flutter_mdc101/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
      /*home: Scaffold(body: LoginPage()),*/
    );
  }
}
