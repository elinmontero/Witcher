import 'package:appentertainment/navbar.dart';
import 'package:appentertainment/welcome.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyMovie());

class MyMovie extends StatelessWidget {
  const MyMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My movie",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text(
          "THE WITCHER",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 17, 3),
      ),
      body: const Welcome(),
    );
  }
}
