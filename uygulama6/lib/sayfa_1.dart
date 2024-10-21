import 'package:flutter/material.dart';
import 'package:uygulama6/menu.dart';

class Sayfa1 extends StatefulWidget {
  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  var deger = "Burası boş";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sayfa 1",
              style: TextStyle(fontSize: 42),
            ),
            Text(deger),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Menu(),
                ),
              ).then((value) {
                if (value != null) {
                  setState(() {
                    deger = value;
                  });
                }
                print(value);
              }),
              child: Text("Listeyi Getir"),
            )
          ],
        ),
      ),
    );
  }
}
