import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "PROVIDERS",
            style: TextStyle(
              letterSpacing: 10,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, "/settingspage");
              },
            )
          ]),
      body: const Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
