//

import 'package:flutter/material.dart';
import 'package:flutter_projectimam/pages/homePage.dart';
import 'package:flutter_projectimam/pages/main_page.dart';
import 'package:flutter_projectimam/pages/validasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 7 Flutter',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const MainPage(),
    );
  }
}
