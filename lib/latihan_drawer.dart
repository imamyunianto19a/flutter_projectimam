import 'package:flutter/material.dart';
import 'package:flutter_projectimam/pages/First.dart';
import 'package:flutter_projectimam/pages/second.dart';


class LatihanDrawer extends StatefulWidget {
  const LatihanDrawer({super.key});

  @override
  _LatihanDrawerState createState() => _LatihanDrawerState();
}

class _LatihanDrawerState extends State<LatihanDrawer> {
  //  indexs halaman aktif saat ini
  int _selectedIndex = 0;

  // Daftar Judul untuk AppBar berdasarkan halaman aktif
  final List<String> _titles = ['Halamanan Circle Avatar', 'halaman Gridview'];

  // Daftar widget halaman tujuan
  final List<Widget> _pages = [
    const FirstPage(), 
    const Second(),
    ];

  //  Fungsi untuk mengubah halaman aktif

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Budi Setiawan"),
              accountEmail: Text("budisetiawan@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "B",
                  style: TextStyle(fontSize: 40.0, color: Colors.blue),
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),

            // Menu 1 Beranda
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Latihan Icon Avatar'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),

            // Pengaturan
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Latihan Grid View'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

