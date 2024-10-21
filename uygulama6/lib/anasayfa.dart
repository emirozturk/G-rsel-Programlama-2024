import 'package:flutter/material.dart';
import 'package:uygulama6/sayfa_1.dart';
import 'package:uygulama6/sayfa_2.dart';
import 'package:uygulama6/sayfa_3.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var seciliIndex = 0;
  var sayfaListesi = [Sayfa1(), Sayfa2(), Sayfa3()];
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sayfa1(),
                ),
              ),
              child: Text("Sayfa 1"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sayfa2(),
                ),
              ),
              child: Text("Sayfa 2"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Sayfa3(),
                ),
              ),
              child: Text("Sayfa 3"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Uygulama 6"),
      ),
      body: sayfaListesi[seciliIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_bottom),
            label: "",
          ),
        ],
        onTap: (value) {
          setState(() {
            seciliIndex = value;
          });
        },
      ),
    );
  }
}
