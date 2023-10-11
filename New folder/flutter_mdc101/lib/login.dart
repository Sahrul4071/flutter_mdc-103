// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_mdc101/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image(image: AssetImage("assets/img/diamond.png")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("SHRINE"),
              ),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "Username",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "Password",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          _usernameController.clear();
                          _passwordController.clear();
                        },
                        child: Text("CANCEL")),
                    ElevatedButton(
                        onPressed: () {
                          if (_usernameController.text == "admin" &&
                              _passwordController.text == "admin") {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("login sukses"),
                              backgroundColor: Colors.green,
                            ));
                            Navigator.pushNamed(context, '/home');
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );*/
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("login gagal"),
                              backgroundColor: Colors.red,
                            ));
                            _usernameController.clear();
                            _passwordController.clear();
                          }
                        },
                        child: Text("NEXT")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
