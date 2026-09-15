import 'package:flutter/material.dart';

/// Tab "Tentang Aplikasi" — punya Scaffold + AppBar sendiri
/// (tanpa drawer), jadi ikon hamburger otomatis tidak muncul
/// saat tab ini aktif.
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.flutter_dash, size: 80, color: Colors.blue),
            const SizedBox(height: 16),
            const Text(
              'Aplikasi Form & Navigasi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'Aplikasi ini menampilkan navigasi bawah (BottomNavigationBar) '
              'dengan dua tab utama: Home (form input dari Tugas 7 dengan '
              'Drawer) dan Tentang Aplikasi.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 16),
            _buildInfoRow('Nama Pembuat', 'Nama Anda'),
            const SizedBox(height: 8),
            _buildInfoRow('Versi', '1.0.0'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$label: ',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(value, style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}
