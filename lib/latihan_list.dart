import 'package:flutter/material.dart';

class latihan_list extends StatelessWidget {
  latihan_list({super.key});
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<String> image1 = <String>[
    "https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/d/2/6/d/d26d7d4f80e60e3ff979289efb1d0379.jpg",
    "https://tse2.mm.bing.net/th?id=OIP.F_YyXLQ4GENZDREezkjWOgHaEK&pid=Api&P=0&h=220",
    "https://tse4.mm.bing.net/th?id=OIP.L7Qip6PNVaDIjNM3o-cD6AHaFU&pid=Api&P=0&h=220"
  ];
  final List<String> image2 = <String>[
    "http://images6.fanpop.com/image/photos/42600000/LISA-MOONSHOT-Korea-lisa-blackpink-42647321-855-1024.jpg",
    "https://tse4.mm.bing.net/th?id=OIP.vavSXyiFKTZ78MReYTAi1QHaIn&pid=Api&P=0&h=220",
    "https://tse2.mm.bing.net/th?id=OIP.n62JBjM-BzUJgOdo-34v3gHaKY&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.VrZYgTkVurWb20UUPJADvgHaLH&pid=Api&P=0&h=220"
  ];
  final List<String> nama = <String>[
    "Lisa", "Jeni", "Rose", "Jiso"
    ];

  final List<String> nama2 = <String>[
    "member blackpink foto bersama",
    "logo tim blackpink",
    "member blackpink ketika konser"
    ];

    final List<String> nama3 = <String>["Nama Pemeran"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.pink,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 200,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: image1.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.pink,
                  child: Column(
                    children: [
                      Image.network(
                        '${image1[index]}',
                        height: 150,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Text(
                        '${nama2[index]}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              }),
        ),
        Container(
          color: Colors.pink,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(3),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.pink,
                    child: Row(
                      children: [
                        Image.network('${image2[index]}'),
                        Text(
                          '${nama[index]}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    // child: Center(child: Text('Entry ${entries[index]}')),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
