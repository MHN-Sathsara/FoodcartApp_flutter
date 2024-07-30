import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BreakFast',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: const Center(
        child: Text('Welcome to GetX!'),
      ),
    );
  }
}
