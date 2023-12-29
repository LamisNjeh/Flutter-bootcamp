import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: Scaffold(
        body: Image(
          height: 100,
          width: 100,
          image: AssetImage("assets/logo.png"),
        ),
      ),
    );
  }
}
