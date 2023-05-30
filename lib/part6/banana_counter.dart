import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {
  const BananaCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final banana = Image.asset('assets/images/banana.png');

    final text = Text(
      '999',
      style: TextStyle(color: Colors.yellow, fontSize: 20),
    );

    final row = Row(
      children: [banana, text],
    );

    final con = Container(
      color: Colors.black87,
      child: row,
    );

    return con;
  }
}
