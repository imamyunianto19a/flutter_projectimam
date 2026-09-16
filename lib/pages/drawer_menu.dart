import 'package:flutter/material.dart';

import 'tugas9_page.dart'; // sesuaikan path kalau tugas9_page.dart ada di folder beda

class DrawerMenu extends StatelessWidget {
  final String selectedMenu;
  final Function(String) onMenuSelected;

  const DrawerMenu({
    super.key,
    required this.selectedMenu,
    required this.onMenuSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // =================================================
          // HEADER DRAWER
          // =================================================

          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: const [
                Icon(Icons.flutter_dash, size: 50, color: Colors.white),

                SizedBox(height: 10),

                Text(
                  'Tugas 7 Flutter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'Form Input Interaktif',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          // =================================================
          // CHECKBOX
          // =================================================
          ListTile(
            leading: const Icon(Icons.check_box),

            title: const Text('Syarat & Ketentuan'),

            selected: selectedMenu == 'Checkbox',

            onTap: () {
              onMenuSelected('Checkbox');

              Navigator.pop(context);
            },
          ),

          // =================================================
          // SWITCH
          // =================================================
          ListTile(
            leading: const Icon(Icons.dark_mode),

            title: const Text('Mode Gelap'),

            selected: selectedMenu == 'Switch',

            onTap: () {
              onMenuSelected('Switch');

              Navigator.pop(context);
            },
          ),

          // =================================================
          // DROPDOWN
          // =================================================
          ListTile(
            leading: const Icon(Icons.category),

            title: const Text('Pilih Kategori Produk'),

            selected: selectedMenu == 'Dropdown',

            onTap: () {
              onMenuSelected('Dropdown');

              Navigator.pop(context);
            },
          ),

          // =================================================
          // DATE PICKER
          // =================================================
          ListTile(
            leading: const Icon(Icons.calendar_month),

            title: const Text('Pilih Tanggal Lahir'),

            selected: selectedMenu == 'Tanggal',

            onTap: () {
              onMenuSelected('Tanggal');

              Navigator.pop(context);
            },
          ),

          // =================================================
          // TIME PICKER
          // =================================================
          ListTile(
            leading: const Icon(Icons.access_time),

            title: const Text('Atur Pengingat'),

            selected: selectedMenu == 'Jam',

            onTap: () {
              onMenuSelected('Jam');

              Navigator.pop(context);
            },
          ),

          const Divider(),

          // =================================================
          // TUGAS 9 - KATEGORI MAKANAN RINGAN
          // =================================================
          ListTile(
            leading: const Icon(Icons.fastfood),

            title: const Text('Tugas 9: Kategori Produk'),

            onTap: () {
              Navigator.pop(context); // tutup drawer dulu

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tugas9Page()),
              );
            },
          ),
        ],
      ),
    );
  }
}
