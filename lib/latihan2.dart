import 'dart:html';

import 'package:flutter/material.dart';
import 'package:latihan_flutter/column.dart';

class latihan2 extends StatelessWidget {
  const latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[ Container(
      color: Colors.grey,
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.add_ic_call_sharp,
                size: 20,
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Text("call")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                size: 20,
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Text("Home")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.account_circle_outlined,
                size: 20,
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Text("icons 2")
            ],
          ),
        ],
      ),
      )
      ]
    ));
  }
}
