// Part 5, Slides 47 and 49: Screen 1 sends a value and waits for the result
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
              onPressed: () async {
                final String? result = await Navigator.push<String>(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const Screen2(firstName: 'Catito'),
                  ),
                );
                if (!context.mounted || result == null) return;
                ScaffoldMessenger.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text(result)));
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
