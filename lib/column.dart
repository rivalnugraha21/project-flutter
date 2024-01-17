import 'package:flutter/material.dart';

class column extends StatelessWidget {
  const column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.amber,
              child: FlutterLogo(
                size: 60,
              ),
            ),
            Container(
              color: Colors.amber,
              child: FlutterLogo(
                size: 60,
              ),
            ),
            Container(
              color: Colors.amber,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
