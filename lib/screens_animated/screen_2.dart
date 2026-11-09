// Part 6, Slide 58: Screen 2 holds the large Hero
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Animated Pizza'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'pizza',
            child: Image.asset(
              'assets/images/pizza.png',
              width: 500,
            ),
          ),
        ),
      ),
    );
  }
}
