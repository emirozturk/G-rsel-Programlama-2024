import 'package:flutter/material.dart';

class ListeElemani extends StatelessWidget {
  ListeElemani(this.index);
  var index;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {}, child: Text("<")),
          Text("Eleman $index"),
          ElevatedButton(
            onPressed: () {},
            child: Text(">"),
          )
        ],
      ),
    );
  }
}
