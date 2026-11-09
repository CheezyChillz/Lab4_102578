// Part 6, Slide 56: main.dart with slow motion (Hero animation)
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import '../screens_animated/screen_1.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Screen1());
  }
}

void main() {
  timeDilation = 2.0;
  runApp(const MainApp());
}
