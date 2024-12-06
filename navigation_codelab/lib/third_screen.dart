import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.looks_one),
              title: const Text('First Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.looks_two),
              title: const Text('Second Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              leading: const Icon(Icons.looks_3),
              title: const Text('Third Screen'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back to Previous Screen'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Go to First Screen'),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.looks_one),
      //       label: 'First Screen',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.looks_two),
      //       label: 'Second Screen',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.looks_3),
      //       label: 'Third Screen',
      //     ),
      //   ],
      //   currentIndex: 2,
      //   selectedItemColor: Colors.blue,
      //   onTap: (index) {
      //     if (index == 0) {
      //       Navigator.pushNamed(context, '/');
      //     } else if (index == 1) {
      //       Navigator.pushNamed(context, '/second');
      //     } else if (index == 2) {
      //       Navigator.pop(context);
      //     }
      //   },
      // ),
    );
  }
}
