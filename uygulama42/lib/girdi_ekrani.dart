import 'package:flutter/material.dart';

class GirdiEkrani extends StatelessWidget {
  var kelimeC;
  var anlamiC;
  var okunusuC;

  GirdiEkrani(this.kelimeC, this.anlamiC, this.okunusuC);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: kelimeC,
            decoration: InputDecoration(
              hintText: "Kelime",
            ),
          ),
          TextField(
            controller: anlamiC,
            decoration: InputDecoration(
              hintText: "Anlamı",
            ),
          ),
          TextField(
            controller: okunusuC,
            decoration: InputDecoration(
              hintText: "Okunuşu",
            ),
          ),
        ],
      ),
    );
  }
}
