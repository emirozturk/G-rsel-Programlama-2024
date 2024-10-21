import 'package:flutter/material.dart';

class ExpandedOrnek extends StatelessWidget {
  var liste = [
    "eleman1",
    "eleman2",
    "eleman3",
    "eleman1",
    "eleman2",
    "eleman3",
    "eleman1",
    "eleman2",
    "eleman3",
    "eleman1",
    "eleman2",
    "eleman3",
    "eleman1",
    "eleman2",
    "eleman3",
  ];

  ExpandedOrnek({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 250,
            child: Image.network(
                "https://miro.medium.com/v2/resize:fit:952/1*OAXivevUVDA6ddtq-7jwVw.gif")),
        const SizedBox(height: 50, child: Text("2. Parça")),
        const SizedBox(height: 50, child: Text("3. Parça")),
        Expanded(
          child: ListView.builder(
            itemCount: liste.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(liste[index]),
            ),
          ),
        ),
      ],
    );
  }
}

/*
import 'package:flutter/material.dart';

class ExpandedOrnek extends StatelessWidget {
  var liste = ["eleman1", "eleman2", "eleman3"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Text("1. Parça"),
        ),
        Expanded(
          flex: 1,
          child: Text("2. Parça"),
        ),
        Expanded(
          flex: 1,
          child: Text("3. Parça"),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: liste.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(liste[index]),
            ),
          ),
        ),
      ],
    );
  }
}
*/