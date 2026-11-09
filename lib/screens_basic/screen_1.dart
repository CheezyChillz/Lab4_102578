// Part 3, Slide 30: Screen 1 pushes a new screen
import 'package:flutter/material.dart';
import 'screen_2.dart'; 


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('This is the first screen.'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute( 
                    builder: (context) => const Screen2(),
                  ),
                );
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
