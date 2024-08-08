import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double kOneUnit = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 2 * kOneUnit),
        margin: EdgeInsets.only(top: kOneUnit),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2 * kOneUnit),
          color: Colors.blueAccent,
        ),
        child: const Center(
          child: Expanded(
            child: Text("adfadsfakjgfdks;goeigoirngonsf"),
          ),
        ),
      ),
    );
  }
}
