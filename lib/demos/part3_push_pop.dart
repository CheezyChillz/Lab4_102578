// Part 3, Slides 32 and 33: main.dart opens Screen 1 (push and pop)
import 'package:flutter/material.dart';
import '../screens_basic/screen_1.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Screen1());
  }
}

void main() => runApp(const MainApp());
