import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

  final List<Widget> _pages = [
    const Center(child: Text('You are in First Screen', style: TextStyle(fontSize: 24))),
    const Center(child: Text('You are in Second Screen', style: TextStyle(fontSize: 24))),
    const Center(child: Text('You are in Third Screen', style: TextStyle(fontSize: 24))),
  ];

class _FirstScreenState extends State<FirstScreen> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
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
                Navigator.pop(context); 
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
            IndexedStack(
              index: _selectedIndex,
              children: _pages,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/second');
            //   },
            //   child: const Text('Go to Second Screen'),
            // ),
            // SizedBox(height: 10),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/third');
            //   },
            //   child: const Text('Go to Third Screen'),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'First Screen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Second Screen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Third Screen',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
