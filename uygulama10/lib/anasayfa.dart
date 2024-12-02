import 'package:flutter/material.dart';
import 'package:uygulama10/kisi.dart';
import 'package:uygulama10/veritabani.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var idC = TextEditingController();
  var adC = TextEditingController();
  var sozC = TextEditingController();
  //UPDATE ÖDEV//
  bool isFirst = true;
  List<Kisi> kisiListesi = [];
  void ekle() {
    Kisi k = Kisi(int.parse(idC.text), adC.text, sozC.text);
    Veritabani.ekle(k);
    load();
  }

  void delete(index) {
    var silinecek = kisiListesi[index];
    Veritabani.sil(silinecek);
    load();
  }

  void load() async {
    kisiListesi = await Veritabani.listele();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (isFirst) {
      isFirst = false;
      load();
    }
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: idC,
              decoration: const InputDecoration(hintText: "Id"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: adC,
              decoration: const InputDecoration(hintText: "Ad"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: sozC,
              decoration: const InputDecoration(hintText: "Söz"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ekle, child: const Text("Ekle")),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: kisiListesi.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(kisiListesi[index].ad!),
              leading: Text(kisiListesi[index].id.toString()),
              subtitle: Text(kisiListesi[index].soz!),
              trailing: ElevatedButton(
                onPressed: () => delete(index),
                child: Icon(Icons.delete),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
