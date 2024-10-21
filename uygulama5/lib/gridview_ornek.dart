import 'package:flutter/material.dart';

class GridviewOrnek extends StatefulWidget {
  const GridviewOrnek({super.key});

  @override
  State<GridviewOrnek> createState() => _GridviewOrnekState();
}

class _GridviewOrnekState extends State<GridviewOrnek> {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      padding: const EdgeInsets.all(50),
      //crossAxisCount: 3,
      maxCrossAxisExtent: 400,
      children: const [
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Text("Eleman"),
          ),
        ),
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Text("Eleman"),
          ),
        ),
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Text("Eleman"),
          ),
        ),
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Text("Eleman"),
          ),
        ),
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Text("Eleman"),
          ),
        ),
        Card(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Text("Eleman"),
          ),
        ),
      ],
    );
  }
}
