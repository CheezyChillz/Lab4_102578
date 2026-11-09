// Part 5, Slides 46 to 51: main.dart opens Screen 1 (send and return data)
import 'package:flutter/material.dart';
import '../screens/screen_1.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Screen1());
  }
}

void main() => runApp(const MainApp());
