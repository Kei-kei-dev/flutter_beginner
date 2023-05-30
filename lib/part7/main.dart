import 'package:flutter/material.dart';

void main() {
  xxxx() {
    print('テストコードです');
  }

  final button = ElevatedButton(
    onPressed: xxxx,
    child: Text('押してみて'),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: button,
      ),
    ),
  );
  runApp(a);
}
