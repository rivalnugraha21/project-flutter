import 'package:flutter/material.dart';
import 'package:latihan_flutter/LatihanColumn.dart';
import 'package:latihan_flutter/ListFlora.dart';
import 'package:latihan_flutter/Sopo_Jarwo.dart';
import 'package:latihan_flutter/booking.dart';
import 'package:latihan_flutter/grid_basic.dart';
import 'package:latihan_flutter/grid_builder.dart';
import 'package:latihan_flutter/latihan2.dart';
import 'package:latihan_flutter/ListFlora.dart';
import 'package:latihan_flutter/DetailFlora.dart';
import 'package:latihan_flutter/form_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ival",
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavigationMenu(),
        '/about': (context) => BelajarGridBuilder(),
        'latihan': (context) => SopoJarwo()
      },
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Dunia...\nHallo guys.. ",
        style: TextStyle(
            color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  @override
  int _selectedTab = 0;

  List _pages = [ListFloraScreen(), booking(), BelajarForm(), SopoJarwo()];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "List"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_outlined), label: "Grid"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Container"),
        ],
      ),
    );
  }
}
