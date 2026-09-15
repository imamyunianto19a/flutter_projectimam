import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  const TimePage({super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  TimeOfDay? selectedTime;

  // =====================================================
  // TIME PICKER
  // =====================================================

  Future<void> pickTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,

      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  // =====================================================
  // FORMAT WAKTU
  // =====================================================

  String formatTime(TimeOfDay time) {
    int hour = time.hourOfPeriod;

    if (hour == 0) {
      hour = 12;
    }

    final hourString = hour.toString().padLeft(2, '0');

    final minuteString = time.minute.toString().padLeft(2, '0');

    final period = time.period == DayPeriod.am ? 'AM' : 'PM';

    return '$hourString:$minuteString $period';
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
              const Icon(Icons.access_time, size: 50, color: Colors.blue),

              const SizedBox(height: 15),

              const Text(
                'Atur Pengingat',

                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              ElevatedButton.icon(
                onPressed: pickTime,

                icon: const Icon(Icons.access_time),

                label: const Text('Pilih Waktu Pengingat'),
              ),

              const SizedBox(height: 25),

              if (selectedTime != null)
                Text(
                  'Pengingat diatur pukul: '
                  '${formatTime(selectedTime!)}',

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
