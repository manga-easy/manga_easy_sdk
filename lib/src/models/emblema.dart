enum TypeEmblema { asset, svg, link }

enum CategoriaEmblema { evento, doacao, rank }

enum RarityEmblema {
  comum(label: 'Comun', horn: 'assets/emblemas/Chifre_cinza.webp'),
  incomum(label: 'Incomum', horn: 'assets/emblemas/Chifre_verde.webp'),
  raro(label: 'Raro', horn: 'assets/emblemas/Chifre_Azul.webp'),
  mitico(label: 'Mítico', horn: 'assets/emblemas/Chifre_Roxa.webp'),
  lendario(label: 'Lendário', horn: 'assets/emblemas/Chifre_dourado.webp'),
  unico(label: 'Único', horn: 'assets/emblemas/Chifre_Vermelho.webp');

  final String label;
  final String horn;
  const RarityEmblema({required this.label, required this.horn});
}

class Emblema {
  static String get collectionId => '61b11b625f4b7';
  String? id;
  String name;
  int timeCria;
  RarityEmblema rarity;
  String description;
  double percent;
  String url;
  List<String> benefits;
  bool adsOff;
  bool disponivel;
  String categoria;
  String type;

  Emblema({
    this.id,
    required this.name,
    required this.timeCria,
    required this.rarity,
    required this.description,
    required this.percent,
    required this.url,
    required this.benefits,
    required this.adsOff,
    required this.disponivel,
    required this.type,
    required this.categoria,
  });

  Emblema.fromJson(dynamic json)
      : id = json['\$id'],
        name = json['name'],
        timeCria = json['time_cria'],
        rarity = validaRarity(json['rarity']),
        description = json['description'],
        percent = json['percent'],
        url = json['url'],
        adsOff = json['adsOff'],
        disponivel = json['disponivel'],
        type = json['type'],
        categoria = json['categoria'] ?? '',
        benefits = json['benefits'].map<String>((e) => e.toString()).toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['\$id'] = id;
    data['name'] = name;
    data['time_cria'] = timeCria;
    data['rarity'] = rarity.toString();
    data['description'] = description;
    data['percent'] = percent;
    data['url'] = url;
    data['benefits'] = benefits;
    data['adsOff'] = adsOff;
    data['disponivel'] = disponivel;
    data['type'] = type;
    data['categoria'] = categoria;
    return data;
  }

  static RarityEmblema validaRarity(String rarity) {
    var index = RarityEmblema.values.indexWhere((element) => element.name == rarity);
    if (index == -1) {
      index = RarityEmblema.values.indexWhere((element) => element.label == rarity);
    }
    switch (RarityEmblema.values[index]) {
      case RarityEmblema.comum:
        return RarityEmblema.comum;
      case RarityEmblema.incomum:
        return RarityEmblema.incomum;
      case RarityEmblema.lendario:
        return RarityEmblema.lendario;
      case RarityEmblema.mitico:
        return RarityEmblema.mitico;
      case RarityEmblema.raro:
        return RarityEmblema.raro;
      case RarityEmblema.unico:
        return RarityEmblema.unico;
      default:
        return RarityEmblema.comum;
    }
  }
}
