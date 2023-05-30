import 'package:flutter/material.dart';

void main() {
  final textField = TextField(
    controller: TextEditingController(),
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'あなたの名前',
      hintText: 'カタカナで入力して下さい',
    ),
  );

  xxxx() {
    print(textField.controller!.text);
  }

  final button = ElevatedButton(onPressed: xxxx, child: const Text('ボタン'));

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              child: textField,
            ),
            button
          ],
        ),
      ),
    ),
  );
  runApp(a);
}
