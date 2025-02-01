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
        body: Column(
          children: [
            Center(
                child: Container(
              width: 500,
              height: 200,
              color: Colors.teal,
              child: Center(
                child: Text(
                  "Assalam Alikum ",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "med",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
            Container(
                width: 500, height: 300, child: Image.asset("images/p1.jpg"))
          ],
        ),
      ),
    );
  }
}
