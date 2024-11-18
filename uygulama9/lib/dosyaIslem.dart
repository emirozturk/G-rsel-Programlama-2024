import 'dart:io';

class DosyaIslem {
  static void dosyayaYaz(String dosyaYolu, List<String> liste) {
    var file = File(dosyaYolu);
    var outputString = "";
    for (var eleman in liste) {
      outputString += "$eleman\n";
    }
    file.writeAsString(outputString);
  }

  static List<String>? dosyadanOku(String dosyaYolu) {
    return null;
  }
}
