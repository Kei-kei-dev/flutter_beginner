import 'package:flutter/material.dart';
import 'banana_counter.dart';

void main() {
  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: BananaCounter(),
      ),
    ),
  );
  runApp(a);
}
