class Eleman {
  String kelime;
  String anlami;
  String okunusu;
  Eleman(this.kelime, this.anlami, this.okunusu);
}

class Veri {
  static List<Eleman> kelimeler = [
    Eleman("Envy", "Kıskançlık", "envi"),
    Eleman("Joy", "Neşe", "coy"),
    Eleman("Gluttony", "Açgözlülük", "Glatoni"),
    Eleman("Fear", "Korku", "Fiır"),
    Eleman("Anger", "Öfke", "Engır"),
  ];
}
