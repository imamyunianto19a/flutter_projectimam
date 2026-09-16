import 'package:flutter/material.dart';

import '../models/produk.dart';

class ListProduk extends StatelessWidget {
  final Produk produk;

  const ListProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            produk.gambar,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 60,
              height: 60,
              color: Colors.grey[300],
              child: const Icon(Icons.fastfood),
            ),
          ),
        ),
        title: Text(
          produk.nama,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(produk.deskripsi),
        trailing: Text(
          produk.harga,
          style: const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
