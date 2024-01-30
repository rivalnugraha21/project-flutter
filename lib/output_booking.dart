import 'package:flutter/material.dart';

class OutputBookingScreen extends StatelessWidget {
  final String nama, jumlah, tgl, taman, tamanImage;
  final double selectedTamanPrice, totalHarga;

  OutputBookingScreen(
      {Key? key,
      required this.nama,
      required this.jumlah,
      required this.tgl,
      required this.taman,
      required this.selectedTamanPrice,
      required this.totalHarga,
      required this.tamanImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Output taman'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Image.network(
              tamanImage,
              height: 100,
              width: 100,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama: $nama'),
                Text('Jumlah Tiket Di Pesan: $jumlah'),
                Text('Tanggal Pesan: $tgl'),
                Text('Taman: $taman'),
                Text('Harga per Tiket: $selectedTamanPrice'),
                Text('Total Harga: $totalHarga'),
              ],
            ),
            tileColor: Colors.white ,
          ),
        ],
      ),
    );
  }
}
