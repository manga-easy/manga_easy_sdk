enum TypeEmblema { asset, svg, link }

enum CategoriaEmblema { evento, doacao, rank }

enum RarityEmblema {
  comum(label: 'Comum'),
  incomum(label: 'Incomum'),
  raro(label: 'Raro'),
  mitico(label: 'Mítico'),
  lendario(label: 'Lendário'),
  unico(label: 'Único');

  const RarityEmblema({required this.label});

  final String label;
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
    data['rarity'] = rarity.name;
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
    var index = RarityEmblema.values.indexWhere(
      (element) => element.name == rarity,
    );
    if (index == -1) {
      index = RarityEmblema.values.indexWhere(
        (element) => element.label == rarity,
      );
    }
    return RarityEmblema.values[index];
  }

  Emblema.empty()
      : name = '',
        timeCria = DateTime.now().millisecondsSinceEpoch,
        rarity = RarityEmblema.comum,
        description = '',
        percent = 0.1,
        url = '',
        benefits = [],
        adsOff = false,
        disponivel = false,
        type = TypeEmblema.link.name,
        categoria = CategoriaEmblema.evento.name;
}
