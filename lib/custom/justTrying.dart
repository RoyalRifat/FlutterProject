import 'package:flutter/material.dart';

class MyTestApp extends StatelessWidget {
  const MyTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.cyan,
      child: Center(
          child: Text(
        "My Flutter Project",
        textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
      )),
    );
  }
}
