import 'dart:io';

import 'package:flutter/material.dart';
import 'package:uygulama9/dosyaIslem.dart';
import 'package:uygulama9/kullanici.dart';

class Dosyalama extends StatefulWidget {
  @override
  State<Dosyalama> createState() => _DosyalamaState();
}

class _DosyalamaState extends State<Dosyalama> {
  var formKey = GlobalKey<FormState>();
  var numaraC = TextEditingController();
  var adSoyadC = TextEditingController();

  var firstLoad = true;
  List<Kullanici> kullanicilar = [];
  void listeGuncelle() async {
    var file = File("/Users/emirozturk/Desktop/liste.txt");
    /*
    var lines = await file.readAsLines();
    kullanicilar = lines
        .map(
          (x) => Kullanici(
            numara: x.split("-")[0],
            adSoyad: x.split("-")[1],
          ),
        )
        .toList();
    setState(() {});
    */
    file.readAsLines().then(
      (value) {
        setState(() {
          kullanicilar = value
              .map(
                (x) => Kullanici(
                  numara: x.split("-")[0],
                  adSoyad: x.split("-")[1],
                ),
              )
              .toList();
        });
      },
    );
  }

  void kaydet() {
    var yeniKullanici = Kullanici(
      numara: numaraC.text,
      adSoyad: adSoyadC.text,
    );
    kullanicilar.add(yeniKullanici);
    List<String> yazilacak = kullanicilar
        .map(
          (x) => "${x.numara}-${x.adSoyad}",
        )
        .toList();
    DosyaIslem.dosyayaYaz("/Users/emirozturk/Desktop/liste.txt", yazilacak);
    numaraC.text = "";
    adSoyadC.text = "";
    listeGuncelle();
  }

  void sil(index) {
    kullanicilar.removeAt(index);
    List<String> yazilacak = kullanicilar
        .map(
          (x) => "${x.numara}-${x.adSoyad}",
        )
        .toList();
    DosyaIslem.dosyayaYaz("/Users/emirozturk/Desktop/liste.txt", yazilacak);

    listeGuncelle();
  }

  @override
  Widget build(BuildContext context) {
    if (firstLoad) {
      firstLoad = false;
      listeGuncelle();
    }
    return Form(
      key: formKey,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Numara"),
                controller: numaraC,
                validator: (value) {
                  if (value == null) {
                    return "Numara girilmelidir";
                  } else if (value == "") {
                    return "Numara girilmelidir";
                  } else if (value.length < 10 || value.length > 10) {
                    return "Numara 10 haneli olmalı";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(hintText: "Ad-Soyad"),
                controller: adSoyadC,
                validator: (value) {
                  if (value == "") {
                    return "Ad-Soyad girilmelidir";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    kaydet();
                  }
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.save),
                    Text("Kaydet"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: kullanicilar.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(kullanicilar[index].adSoyad),
                  subtitle: Text(kullanicilar[index].numara),
                  trailing: ElevatedButton(
                    onPressed: () => sil(index),
                    child: const Icon(Icons.delete),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
