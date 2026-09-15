import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  String? selectedCategory;

  final List<String> categories = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lainnya',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),

      child: Card(
        elevation: 4,

        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Icon(Icons.category, size: 50, color: Colors.blue),

              const SizedBox(height: 15),

              const Text(
                'Pilih Kategori Produk',

                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Kategori Produk',
                  border: OutlineInputBorder(),
                ),

                initialValue: selectedCategory,

                items: categories.map((category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),

                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),

              const SizedBox(height: 25),

              if (selectedCategory != null)
                Text(
                  'Anda memilih kategori: '
                  '$selectedCategory',

                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
