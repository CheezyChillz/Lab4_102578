// Part 1, Slide 9: Anatomy of a button
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ButtonAnatomy()));

class ButtonAnatomy extends StatelessWidget {
  const ButtonAnatomy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Anatomy of a Button')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Welcome to Android ATC'),
        ),
      ),
    );
  }
}
