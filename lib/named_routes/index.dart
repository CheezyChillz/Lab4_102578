// Part 4, Slides 38 and 39: Index screen with pushNamed buttons
import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lab 04 - Named Routes'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '0');
            },
            child: const Text('Go to Screen 0'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '1');
            },
            child: const Text('Go to Screen 1'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '2');
            },
            child: const Text('Go to Screen 2'),
          ),
        ],
      ),
    );
  }
}
