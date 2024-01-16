import 'package:flutter/material.dart';
import 'container_widget.dart';
import 'container2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "belajar flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("RIVAL NIH BOS"),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.pink,
          child: container2(),
        ),

      ),
    );
  } 
}

class BelajarHelloWorld extends StatelessWidget {
  const BelajarHelloWorld({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Hello World",
     style: TextStyle(
      fontSize: 24, 
      fontWeight: FontWeight.bold,
    color: Colors.green[400]
    ),
    );
  }
}