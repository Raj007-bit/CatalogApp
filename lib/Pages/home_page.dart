import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Hero";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Random"),
      ),
      body: Center(
        child: Text("Welcome to $days days course from $name"),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
