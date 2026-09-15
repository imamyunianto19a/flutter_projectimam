import 'package:flutter/material.dart';

class DatePage extends StatefulWidget {
  const DatePage({super.key});

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  DateTime? selectedDate;

  // =====================================================
  // DATE PICKER
  // =====================================================

  Future<void> pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,

      initialDate: DateTime(2000),

      firstDate: DateTime(1900),

      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  // =====================================================
  // FORMAT TANGGAL INDONESIA
  // =====================================================

  String formatDate(DateTime date) {
    const monthNames = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];

    return '${date.day} '
        '${monthNames[date.month - 1]} '
        '${date.year}';
  }

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
              const Icon(Icons.calendar_month, size: 50, color: Colors.blue),

              const SizedBox(height: 15),

              const Text(
                'Pilih Tanggal Lahir',

                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              ElevatedButton.icon(
                onPressed: pickDate,

                icon: const Icon(Icons.calendar_today),

                label: const Text('Pilih Tanggal Lahir'),
              ),

              const SizedBox(height: 25),

              if (selectedDate != null)
                Text(
                  'Tanggal Lahir: '
                  '${formatDate(selectedDate!)}',

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
