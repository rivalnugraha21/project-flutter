import 'package:flutter/material.dart';

class grid_basic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "GridView",
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: GridView.count(
        crossAxisCount: 3,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.yellowAccent,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.blueAccent,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "2",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.brown,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "3",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.orange,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "4",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.greenAccent,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "5",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.pinkAccent,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "6",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.deepPurple,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "7",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.redAccent,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "8",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

           Container(
            padding: const EdgeInsets.all(3.0),
            color: Colors.blueGrey,
            height: 500.0, // Coba ganti nilai-nya menjadi statik
            child: Center(
              child: Text(
                "9",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
