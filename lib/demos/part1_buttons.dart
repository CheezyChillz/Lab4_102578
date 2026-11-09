// Part 1, Slides 10 to 21: Button widgets (the finished file after every step)
import 'package:flutter/material.dart';

const List<String> cities = ['Kuching', 'Jemarahan', 'Limbang', 'Miri'];

const Map<String, String> menuOptions = {
  'viewProfile': 'View profile',
  'toSettings': 'Go to settings',
  'logOut': 'Log out',
};

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String dropdownValue = cities.first;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Lab 04 - Floating Action Button'),
          actions: [
            PopupMenuButton<String>(
              onSelected: (String value) {
                debugPrint('You selected: $value');
              },
              itemBuilder: (BuildContext context) {
                return menuOptions.entries.map((entry) {
                  return PopupMenuItem<String>(
                    value: entry.key,
                    child: Text(entry.value),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              OverflowBar(
                overflowAlignment: OverflowBarAlignment.start,
                spacing: 20.0,
                overflowSpacing: 10.0,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Yes'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('No'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('?'),
                  ),
                ],
              ),
              const Text('Welcome to Android ATC'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Text Button'),
              ),
              IconButton(
                icon: const Icon(Icons.volume_up),
                tooltip: 'Increase volume',
                onPressed: () {},
              ),
              DropdownButton<String>(
                value: dropdownValue,
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
              FilledButton(
                onPressed: () {},
                child: const Text('Filled Button'),
              ),
              FilledButton.tonal(
                onPressed: () {},
                child: const Text('Filled Tonal Button'),
              ),
              DropdownMenu<String>(
                initialSelection: cities.first,
                dropdownMenuEntries: [
                  for (final String city in cities)
                    DropdownMenuEntry<String>(
                      value: city,
                      label: city,
                    ),
                ],
                onSelected: (String? value) {
                  if (value == null) return;
                  setState(() {
                    dropdownValue = value;
                  });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.phone),
        ),
      ),
    );
  }
}

void main() => runApp(const MainApp());
