import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
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
                Navigator.pop(context); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.looks_3),
              title: const Text('Third Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/third');
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
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go to Third Screen'),
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
      //   currentIndex: 1,
      //   selectedItemColor: Colors.blue,
      //   onTap: (index) {
      //     if (index == 0) {
      //       Navigator.pushNamed(context, '/');
      //     } else if (index == 1) {
      //       Navigator.pop(context);
      //     } else if (index == 2) {
      //       Navigator.pushNamed(context, '/third');
      //     }
      //   },
      // ),
    );
  }
}
