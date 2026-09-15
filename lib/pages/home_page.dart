import 'package:flutter/material.dart';
import 'package:flutter_projectimam/widgets/bottom_navigator.dart';
   import 'package:flutter_projectimam/widgets/bottom_navigator.dart';
   import 'widgets/bottom_navigator.dart';

import 'widgets/bottom_navigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: TextStyle(fontSize: 30)),
    Text('Index 1: Cart', style: TextStyle(fontSize: 30)),
    Text('Index 2: Profile', style: TextStyle(fontSize: 30)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Home Page')),

      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),

      bottomNavigationBar: BottomNavigator(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
