//

import 'package:flutter/material.dart';
import 'package:flutter_projectimam/day%2015/preference_handler.dart';
import 'package:flutter_projectimam/day%2015/views/splash_scren.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceHandler.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan 15',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const SplashScreenDay15(),
    );
  }
}
