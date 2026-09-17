import 'package:flutter/material.dart';
import 'package:flutter_projectimam/day15/preference_handler.dart';
import 'package:flutter_projectimam/day15/views/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _prosesLogout(BuildContext context) async {
    await PreferenceHandler.logout();

    if (!context.mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const LoginScreen(showLogoutMessage: true),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () => _prosesLogout(context),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Selamat datang!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}