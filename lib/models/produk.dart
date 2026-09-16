class Produk {
  final String nama;
  final String deskripsi;
  final String gambar; // path asset atau url
  final String harga;

  Produk({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.harga,
  });
}

// Data 10 produk Makanan Ringan
List<Produk> daftarProduk = [
  Produk(
    nama: 'Keripik Kentang',
    deskripsi:
        'Keripik kentang renyah rasa original, cocok untuk cemilan santai.',
    gambar: 'https://picsum.photos/seed/keripikkentang/200/200',
    harga: 'Rp 12.000',
  ),
  Produk(
    nama: 'Keripik Singkong',
    deskripsi: 'Keripik singkong tipis dan gurih dengan taburan bumbu balado.',
    gambar: 'https://picsum.photos/seed/keripiksingkong/200/200',
    harga: 'Rp 10.000',
  ),
  Produk(
    nama: 'Kacang Atom',
    deskripsi: 'Kacang tanah bersalut tepung, renyah dan gurih.',
    gambar: 'https://picsum.photos/seed/kacangatom/200/200',
    harga: 'Rp 8.000',
  ),
  Produk(
    nama: 'Kerupuk Udang',
    deskripsi: 'Kerupuk gurih dengan cita rasa udang asli.',
    gambar: 'https://picsum.photos/seed/kerupukudang/200/200',
    harga: 'Rp 9.500',
  ),
  Produk(
    nama: 'Wafer Coklat',
    deskripsi: 'Wafer renyah berlapis krim coklat manis.',
    gambar: 'https://picsum.photos/seed/wafercoklat/200/200',
    harga: 'Rp 7.000',
  ),
  Produk(
    nama: 'Biskuit Marie',
    deskripsi: 'Biskuit klasik dengan tekstur renyah, cocok untuk teman teh.',
    gambar: 'https://picsum.photos/seed/biskuitmarie/200/200',
    harga: 'Rp 6.500',
  ),
  Produk(
    nama: 'Pilus Pedas',
    deskripsi: 'Cemilan bulat kecil dengan rasa pedas gurih.',
    gambar: 'https://picsum.photos/seed/piluspedas/200/200',
    harga: 'Rp 8.500',
  ),
  Produk(
    nama: 'Stik Keju',
    deskripsi: 'Stik renyah dengan taburan keju asli yang gurih.',
    gambar: 'https://picsum.photos/seed/stikkeju/200/200',
    harga: 'Rp 11.000',
  ),
  Produk(
    nama: 'Popcorn Karamel',
    deskripsi: 'Popcorn manis dengan lapisan karamel yang lumer.',
    gambar: 'https://picsum.photos/seed/popcornkaramel/200/200',
    harga: 'Rp 13.000',
  ),
  Produk(
    nama: 'Kue Semprong',
    deskripsi: 'Kue gulung tipis dan renyah dengan rasa manis khas.',
    gambar: 'https://picsum.photos/seed/kuesemprong/200/200',
    harga: 'Rp 9.000',
  ),
];
