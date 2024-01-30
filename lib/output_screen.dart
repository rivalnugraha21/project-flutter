import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tglLahir, agama;
  OutputFormScreen(
      {Key? key,
      required this.nama,
      required this.jk,
      required this.agama,
      required this.tglLahir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Text('nama: ${nama} Jenis Kelamin: ${jk} Tanggal Lahir: ${tglLahir} agama: ${agama}'),
      ),
    );
  }
}
