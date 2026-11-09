// Part 6, Slide 57: Screen 1 holds the small Hero
import 'package:flutter/material.dart';
import 'screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lab 04 - Hero Animation'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const Screen2(),
            ),
          );
        },
        child: Hero(
          tag: 'pizza',
          child: Image.asset(
            'assets/images/pizza.png',
            width: 100,
          ),
        ),
      ),
    );
  }
}
