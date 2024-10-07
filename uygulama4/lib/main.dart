import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama4());
}

class Uygulama4 extends StatefulWidget {
  @override
  State<Uygulama4> createState() => _Uygulama4State();
  var ekrandaGosterilen = "Merhaba";
}

class _Uygulama4State extends State<Uygulama4> {
  var ekrandanAlinanController = TextEditingController();

  void degistir() {
    setState(() {
      var ekranaGirilen = ekrandanAlinanController.text;
      widget.ekrandaGosterilen = ekranaGirilen;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Uygulama 4")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: ekrandanAlinanController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: degistir,
                  child: Text("Değiştir"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.ekrandaGosterilen,
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
