import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Sayfa 2",
          style: TextStyle(fontSize: 42),
        ),
      ),
    );
  }
}
