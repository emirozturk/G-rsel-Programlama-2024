import 'package:sqflite/sqflite.dart';
import 'package:uygulama10/kisi.dart';

class Veritabani {
  static Future<Database> open() async {
    var db = await openDatabase("/Users/emirozturk/Desktop/local.db");
    await db.execute(
        "CREATE TABLE if not exists kisiler(id INTEGER PRIMARY KEY,ad TEXT,soz TEXT)");
    return db;
  }

  static void ekle(Kisi k) async {
    var db = await open();
    db.insert("kisiler", k.toMap());
  }

  static void sil(Kisi k) async {
    var db = await open();
    db.delete(
      "kisiler",
      where: "id=?",
      whereArgs: [k.id],
    );
  }

  static void update(Kisi k) async {
    var db = await open();
    db.update(
      "kisiler",
      k.toMap(),
      where: "id=?",
      whereArgs: [k.id],
    );
  }

  static Future<List<Kisi>> listele() async {
    var db = await open();
    var result = await db.query("kisiler");
    return result.map((e) => Kisi.fromMap(e)).toList();
  }
}
