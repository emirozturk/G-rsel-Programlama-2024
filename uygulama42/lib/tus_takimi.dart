import 'package:flutter/material.dart';

class TusTakimi extends StatelessWidget {
  var ekle;
  var sil;
  TusTakimi(this.ekle,this.sil);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: ekle,
            child: Text("Ekle"),
          ),
          ElevatedButton(
            onPressed: sil,
            child: Text("Sil"),
          ),
        ],
      ),
    );
  }
}
