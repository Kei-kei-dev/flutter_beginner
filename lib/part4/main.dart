import 'package:flutter/material.dart';

void main() {
  // final img = Image.asset('assets/images/banana.png');
  final img = Image.network('https://flutter-image-network.web.app/inu.jpeg');

  final app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: img,
      ),
    ),
  );

  runApp(app);
}
