import 'package:flutter/material.dart';

import 'konfirmasi_page.dart';

class FormPendaftaranPage extends StatefulWidget {
  const FormPendaftaranPage({super.key});

  @override
  State<FormPendaftaranPage> createState() => _FormPendaftaranPageState();
}

class _FormPendaftaranPageState extends State<FormPendaftaranPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _hpController = TextEditingController();
  final TextEditingController _kotaController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _hpController.dispose();
    _kotaController.dispose();
    super.dispose();
  }

  // =====================================================
  // VALIDASI & TAMPILKAN DIALOG
  // =====================================================
  void _prosesDaftar() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text('Ringkasan Pendaftaran'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama Lengkap : ${_namaController.text}'),
                const SizedBox(height: 6),
                Text('Email        : ${_emailController.text}'),
                const SizedBox(height: 6),
                Text(
                  'Nomor HP     : ${_hpController.text.isEmpty ? '-' : _hpController.text}',
                ),
                const SizedBox(height: 6),
                Text('Kota         : ${_kotaController.text}'),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), // tutup dialog aja
                child: const Text('Batal'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // tutup dialog dulu

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KonfirmasiPage(
                        nama: _namaController.text,
                        kota: _kotaController.text,
                      ),
                    ),
                  );
                },
                child: const Text('Lanjut'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulir Pendaftaran'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // =============== NAMA LENGKAP ===============
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama lengkap wajib diisi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // =============== EMAIL ===============
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Email wajib diisi';
                  }
                  if (!value.contains('@')) {
                    return 'Email harus mengandung karakter @';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // =============== NOMOR HP (BOLEH KOSONG) ===============
              TextFormField(
                controller: _hpController,
                decoration: const InputDecoration(
                  labelText: 'Nomor HP (opsional)',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
                // tidak ada validator -> boleh kosong
              ),
              const SizedBox(height: 16),

              // =============== KOTA (WAJIB) ===============
              TextFormField(
                controller: _kotaController,
                decoration: const InputDecoration(
                  labelText: 'Kota',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_city),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Kota wajib diisi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // =============== TOMBOL DAFTAR ===============
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _prosesDaftar,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text('Daftar', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
