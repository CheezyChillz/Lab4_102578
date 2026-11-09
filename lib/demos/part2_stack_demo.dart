// Part 2, Slide 26: The Navigator stack (push and pop in one file)
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: StackBottom()));

class StackBottom extends StatelessWidget {
  const StackBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack: bottom screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StackTop(),
              ),
            );
          },
          child: const Text('Push'),
        ),
      ),
    );
  }
}

class StackTop extends StatelessWidget {
  const StackTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack: top screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Pop'),
        ),
      ),
    );
  }
}
