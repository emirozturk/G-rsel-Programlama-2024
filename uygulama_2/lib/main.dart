import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama2());
}

class Uygulama2 extends StatelessWidget {
  var degisken = "";
  void tiklama(var yazilacak) {
    degisken = yazilacak;
  }

  @override
  Widget build(BuildContext context) {
    var isIos = false;
    return isIos?CupertinoApp():MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Uygulama Başlığı"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hayat çok zor",
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
              const Text(
                "Çok ama çok zor",
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                degisken,
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              ElevatedButton(
                child: const Text("Tıkla"),
                onPressed: () => tiklama("333"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
