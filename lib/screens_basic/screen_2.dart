// Part 3, Slide 31: Screen 2 pops back to Screen 1
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Return'),
          ),
        ],
      ),
    );
  }
}
