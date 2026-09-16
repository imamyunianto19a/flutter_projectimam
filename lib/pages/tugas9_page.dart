import 'package:flutter/material.dart';

import '../models/produk.dart';
import '../widgets/list_produk.dart';

class Tugas9Page extends StatefulWidget {
  const Tugas9Page({super.key});

  @override
  State<Tugas9Page> createState() => _Tugas9PageState();
}

class _Tugas9PageState extends State<Tugas9Page>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Data untuk pendekatan 1 (List biasa)
  final List<String> kategoriList = [
    'Keripik Kentang',
    'Keripik Singkong',
    'Kacang Atom',
    'Kerupuk Udang',
    'Wafer Coklat',
    'Biskuit Marie',
    'Pilus Pedas',
    'Stik Keju',
    'Popcorn Karamel',
    'Kue Semprong',
  ];

  // Data untuk pendekatan 2 (List<Map>)
  final List<Map<String, dynamic>> kategoriMap = [
    {'nama': 'Keripik Kentang', 'icon': Icons.fastfood},
    {'nama': 'Keripik Singkong', 'icon': Icons.local_dining},
    {'nama': 'Kacang Atom', 'icon': Icons.grain},
    {'nama': 'Kerupuk Udang', 'icon': Icons.set_meal},
    {'nama': 'Wafer Coklat', 'icon': Icons.cookie},
    {'nama': 'Biskuit Marie', 'icon': Icons.bakery_dining},
    {'nama': 'Pilus Pedas', 'icon': Icons.whatshot},
    {'nama': 'Stik Keju', 'icon': Icons.lunch_dining},
    {'nama': 'Popcorn Karamel', 'icon': Icons.icecream},
    {'nama': 'Kue Semprong', 'icon': Icons.cake},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori: Makanan Ringan'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(text: 'List'),
            Tab(text: 'List<Map>'),
            Tab(text: 'Model'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // ================= TAB 1: List biasa =================
          ListView.builder(
            itemCount: kategoriList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.fastfood),
                title: Text(kategoriList[index]),
              );
            },
          ),

          // ================= TAB 2: List<Map<String, dynamic>> =================
          ListView.builder(
            itemCount: kategoriMap.length,
            itemBuilder: (context, index) {
              final item = kategoriMap[index];
              return ListTile(
                leading: Icon(item['icon'] as IconData, color: Colors.orange),
                title: Text(item['nama'] as String),
              );
            },
          ),

          // ================= TAB 3: Model + ListProduk =================
          ListView.builder(
            itemCount: daftarProduk.length,
            itemBuilder: (context, index) {
              return ListProduk(produk: daftarProduk[index]);
            },
          ),
        ],
      ),
    );
  }
}
