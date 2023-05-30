import 'package:flutter/material.dart';

void main() {
  final img = Image.network('https://flutter-image-network.web.app/inu.jpeg');
  final con = Container(
    color: Colors.deepOrange,
    width: 350,
    height: 300,
    child: img,
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(10),
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: con,
      ),
    ),
  );
  runApp(a);
}
