import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uygulama 6"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: controller),
            ElevatedButton(
              onPressed: () => Navigator.pop(
                context,
                controller.text,
              ),
              child: Text("Ok"),
            ),
          ],
        ),
      ),
    );
  }
}
