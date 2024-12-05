import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Return to the first screen.
            Navigator.pop(context);
          },
          child: const Text('Go Back to First Screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First Screen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.screen_share),
            label: 'Second Screen',
          ),
        ],
        onTap: (index) {
          if (index == 0 && ModalRoute.of(context)?.settings.name != '/') {
            Navigator.pushNamed(context, '/');
          } else if (index == 1 && ModalRoute.of(context)?.settings.name != '/second') {
            Navigator.pushNamed(context, '/second');
          }
        },
      ),
    );
  }
}