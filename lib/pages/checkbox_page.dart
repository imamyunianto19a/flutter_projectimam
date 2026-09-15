import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool isAgreed = false;

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
              const Icon(Icons.check_box, size: 50, color: Colors.blue),

              const SizedBox(height: 15),

              const Text(
                'Syarat & Ketentuan',

                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              CheckboxListTile(
                title: const Text(
                  'Saya menyetujui semua persyaratan yang berlaku',
                ),

                value: isAgreed,

                onChanged: (value) {
                  setState(() {
                    isAgreed = value ?? false;
                  });
                },

                controlAffinity: ListTileControlAffinity.leading,
              ),

              const Divider(),

              const SizedBox(height: 15),

              Text(
                isAgreed
                    ? 'Lanjutkan pendaftaran diperbolehkan'
                    : 'Anda belum bisa melanjutkan',

                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isAgreed ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
