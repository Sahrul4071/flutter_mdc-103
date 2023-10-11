// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
// by dini  safitri

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter simpel UI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Demo Simple")),
      body: Container(
          color: Colors.blue[80],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, color: Colors.green),
                  Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "CALL",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          //fontSize: 20
                        ),
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.near_me, color: Colors.orange),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "ROUTE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.orange),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text("SHARE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue))),
                ],
              ),
            ],
          )
          //Text("hello flutter", textDirection: TextDirection.ltr,),
          ),
    );
  }
}
