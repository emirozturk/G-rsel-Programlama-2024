import 'dart:io';

import 'package:flutter/material.dart';
import 'package:uygulama5/gridview_ornek.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: "Search",
            ),
          ),
          foregroundColor: const Color.fromARGB(255, 38, 222, 96),
        ),
        body: GridviewOrnek(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favoriler"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Ayarlar"),
          ],
          currentIndex: 1,
          iconSize: 20,
        ),
      ),
    );
  }
}
