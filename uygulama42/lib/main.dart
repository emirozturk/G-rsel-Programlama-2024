import 'package:flutter/material.dart';
import 'package:uygulama42/girdi_ekrani.dart';
import 'package:uygulama42/tus_takimi.dart';
import 'package:uygulama42/veri.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Uygulama42(title: 'Uygulama 4-2'),
    );
  }
}

class Uygulama42 extends StatefulWidget {
  const Uygulama42({super.key, required this.title});
  final String title;

  @override
  State<Uygulama42> createState() => _Uygulama42State();
}

class _Uygulama42State extends State<Uygulama42> {
  var kelimeListesi = Veri.kelimeler;
  var kelimeController = TextEditingController();
  var anlamiController = TextEditingController();
  var okunusuController = TextEditingController();
  var seciliIndex = -1;

  void ekle() {
    setState(() {
      var yeniEleman = Eleman(
          kelimeController.text, anlamiController.text, okunusuController.text);
      kelimeListesi.add(yeniEleman);
      kelimeController.clear();
      anlamiController.clear();
      okunusuController.clear();
    });
  }

  void sil() {
    setState(() {
      kelimeListesi.removeAt(seciliIndex);
      seciliIndex = -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          GirdiEkrani(kelimeController, anlamiController, okunusuController),
          TusTakimi(ekle, sil),
          Expanded(
            child: ListView.builder(
                itemCount: kelimeListesi.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(kelimeListesi[index].kelime),
                    subtitle: Text(kelimeListesi[index].anlami),
                    trailing: Text(kelimeListesi[index].okunusu),
                    onTap: () => setState(() {
                      seciliIndex = index;
                    }),
                    selectedTileColor: Colors.purple,
                    selectedColor: Colors.white,
                    selected: index == seciliIndex,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
