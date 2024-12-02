class Kisi {
  int? id;
  String? ad;
  String? soz;
  Kisi(this.id, this.ad, this.soz);

  Kisi.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        ad = map["ad"],
        soz = map["soz"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "ad": ad,
      "soz": soz,
    };
  }
}
