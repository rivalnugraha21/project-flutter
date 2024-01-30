import 'package:flutter/material.dart';
import 'package:latihan_flutter/DetailFlora.dart';
import '../helpers/size_helper.dart';

class ListFloraScreen extends StatelessWidget {
  final List<Map<String, dynamic>> floraData = [
    {
      "nama": "kepuh",
      "asal": " Pulau Jawa",
      "image": "assets/img/Buah Kepuh.png",
      "des": "buah kepuh ini berasal dari pulau jawa"
    },
    {
      "nama": "bunga bangkai",
      "asal": "Pulau Sumatera",
      "image": "assets/img/bunga bangkai.jpg",
      "des": "bunga bangkai ini berasal dari pulau sumatra"
    },
    {
      "nama": "sawo kecik",
      "asal": "Kabupaten Bantul",
      "image": "assets/img/sawo.jpeg",
      "des": "sawo kecik berasal dari kabupaten bantul"
    },
    {
      "nama": "matoa",
      "asal": "Papua",
      "image": "assets/img/matoa.jpg",
      "des": ""
    },
    {
      "nama": "anggrek hitam",
      "asal": "Kalimantan Timur serta Papua",
      "image": "assets/img/anggrek.jpg",
      "des": ""
    },
    {
      "nama": "sagu",
      "asal": "Maluku dan Papua",
      "image": "assets/img/sagu.jpg",
      "des": ""
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/background.png"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: floraData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailFloraScreen(
                        nama: floraData[index]["nama"],
                        asal: floraData[index]["asal"],
                        image: floraData[index]["image"],
                        des: floraData[index]["des"]),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      "${floraData[index]["image"]}",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "${floraData[index]["nama"]} - ${floraData[index]["asal"]}",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                      backgroundColor: Colors.black),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
