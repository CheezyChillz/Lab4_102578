// Part 4, Slides 41 to 43: main.dart registers the named routes
import 'package:flutter/material.dart';
import '../named_routes/index.dart';
import '../named_routes/screen_1.dart';
import '../named_routes/screen_2.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IndexScreen(),
      routes: {
        '0': (context) => const IndexScreen(),
        '1': (context) => const Screen1(),
        '2': (context) => const Screen2(),
      },
    );
  }
}

void main() => runApp(const MainApp());
