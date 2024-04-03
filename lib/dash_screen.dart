import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/tempHome');
        break;
      case 1:
        Navigator.pushNamed(context, '/testPage');
        break;
      case 2:
        Navigator.pushNamed(context, '/testPage2');
        break;
      // Add more cases as needed for additional routes
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: Colors.grey,
      ),
      body: SelectionArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigationMenu(onItemTapped: _onItemTapped),
            // The expanded widget containing page content can be omitted if navigation is entirely handled by named routes
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}

class NavigationMenu extends StatelessWidget {
  final ValueChanged<int> onItemTapped;

  const NavigationMenu({super.key, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    // This is a simplified example, add your actual list of menu items
    return Container(
      width: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.grey[300]!, Colors.black],
        ),
      ),
      child: ListView(
        children: <Widget>[
          // Example menu item
          ListTile(
            title: const Text('Temp Home'),
            onTap: () => onItemTapped(0),
          ),
          ListTile(
            title: const Text('Test Page'),
            onTap: () => onItemTapped(1),
          ),
          ListTile(
            title: const Text('Test Page 2'),
            onTap: () => onItemTapped(2),
          ),
          // Add more ListTiles for each route
        ],
      ),
    );
  }
}
