enum TypeEmblema { asset, svg, link }
enum CategoriaEmblema { evento, doacao, rank }
enum RarityEmblema { Comum, Incomum, Raro }

class Emblema {
  static String get collectionId => '61b11b625f4b7';
  String id;
  String name;
  int timeCria;
  String rarity;
  String description;
  double percent;
  String url;
  List<String> benefits;
  bool adsOff;
  bool disponivel;
  String categoria;
  String type;

  Emblema({
    required this.id,
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
        rarity = json['rarity'],
        description = json['description'],
        percent = json['percent'],
        url = json['url'],
        adsOff = json['adsOff'],
        disponivel = json['disponivel'],
        type = json['type'],
        categoria = json['categoria'] ?? '',
        benefits = json['benefits'].map<String>((e) => e.toString()).toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['\$id'] = id;
    data['name'] = name;
    data['time_cria'] = timeCria;
    data['rarity'] = rarity;
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

  String retornaChifre() {
    switch (rarity) {
      case 'Comum':
        return 'assets/emblemas/Chifre_cinza.webp';
      case 'Incomum':
        return 'assets/emblemas/Chifre_verde.webp';
      case 'Raro':
        return 'assets/emblemas/Chifre_Azul.webp';
      case 'Mítico':
        return 'assets/emblemas/Chifre_Roxa.webp';
      case 'Lendário':
        return 'assets/emblemas/Chifre_dourado.webp';
      case 'Único':
        return 'assets/emblemas/Chifre_Vermelho.webp';
      default:
        return '';
    }
  }
}
