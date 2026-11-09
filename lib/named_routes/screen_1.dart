// Part 4, Slide 40: Screen 1 of the named routes
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('This is the first screen.'),
          ],
        ),
      ),
    );
  }
}
