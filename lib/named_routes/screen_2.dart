// Part 4, Slide 40: Screen 2 of the named routes
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('This is the second screen.'),
          ],
        ),
      ),
    );
  }
}
