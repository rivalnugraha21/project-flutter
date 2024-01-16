import 'package:flutter/material.dart';
import 'package:latihan_flutter/main.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      // color: Colors.blueGrey,
      margin: EdgeInsets.only(top: 10, left: 10),
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 93, 106, 112),
           Colors.purple],
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: BelajarHelloWorld(),
    );
  }
}
