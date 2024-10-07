import 'package:flutter/material.dart';
import 'package:uygulama3/liste_elemani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uygulama 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Uygulama(),
    );
  }
}

class Uygulama extends StatelessWidget {
  const Uygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "About Me",
            style: TextStyle(color: Colors.green, fontSize: 36),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    "images/aboutme.jpg",
                  ),
                  height: 100,
                  width: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Computer Engineer")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Composer")),
                    ),
                  ],
                ),
                ListeElemani("1"),
                ListeElemani("2"),
                ListeElemani("3"),
              ],
            ),
          ),
        ));
  }
}
