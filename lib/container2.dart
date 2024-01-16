import 'package:flutter/material.dart';

class container2 extends StatelessWidget {
  const container2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
         
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            // color: Colors.blueGrey,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 93, 106, 112), Colors.purple],
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 3),
            ),
          
          child: Container(
            height: double.infinity,
              width: double.infinity,
              // color: Colors.blueGrey,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 93, 106, 112), Color.fromARGB(255, 184, 22, 22)],
                ),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 3),
              ),

            child: Container(
              height: double.infinity,
                width: double.infinity,
                // color: Colors.blueGrey,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 93, 106, 112), Color.fromARGB(255, 21, 144, 182)],
                  ),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 3),
                ),

              child: Text(
                'rival',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
