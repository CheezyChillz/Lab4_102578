// Part 5, Slides 46 and 48: Screen 2 receives a value and returns one
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.firstName});

  final String firstName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Screen 2'),
      ),
      body: Column(
        children: [
          const Center(child: Text('This is the second screen.')),
          Center(child: Text('firstName from screen_1.dart is $firstName.')),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context, 'Returned from Screen 2');
            },
            child: const Text('Return'),
          ),
        ],
      ),
    );
  }
}
