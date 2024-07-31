import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodcart/View/screens/widgets/sidebuttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BreakFast',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: SmallSidebuttons(
          textcolor: Colors.black,
          backgroundcolor: Colors.white,
          bodercolor: Colors.white,
          text: 'Menu',
          size: 25,
          isIcon: true,
          iconPath: 'assets/icons/Arrow - Left 2.svg',
        ),
      ),
      body: const Center(
        child: Text('Welcome to GetX!'),
      ),
    );
  }
}
