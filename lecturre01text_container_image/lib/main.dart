import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
          "Assalam Alikum ",
          style: TextStyle(
              fontSize: 30, fontFamily: "med", fontWeight: FontWeight.bold, color: Color(0xff4B0082)),
          textAlign: TextAlign.center,
        
        )),
      ),
    );
  }
}
