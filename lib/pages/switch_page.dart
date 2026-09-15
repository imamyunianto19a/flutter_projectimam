import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isDarkMode ? Colors.grey[900] : Colors.white,

      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Card(
          color: isDarkMode ? Colors.grey[850] : Colors.white,

          elevation: 4,

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Icon(
                  Icons.dark_mode,
                  size: 50,

                  color: isDarkMode ? Colors.yellow : Colors.blue,
                ),

                const SizedBox(height: 15),

                Text(
                  'Mode Gelap',

                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,

                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),

                const SizedBox(height: 20),

                SwitchListTile(
                  title: Text(
                    'Aktifkan Mode Gelap',

                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),

                  value: isDarkMode,

                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),

                const Divider(),

                const SizedBox(height: 15),

                Text(
                  isDarkMode ? 'Mode Gelap Aktif' : 'Mode Terang Aktif',

                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
