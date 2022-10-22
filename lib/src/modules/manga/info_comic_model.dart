class InfoComicModel {
  static String get collectionId => '62408a74a3081ee2886a';

  String name;
  String uniqueid;
  String ultimoCap;
  int totalViews;
  String autor;
  String thumb;
  String sinopse;
  double ratio;
  String scans;
  int dateUp;
  int dateMade;
  String generos;
  bool isNotAtualiza;
  bool isAdult;

  InfoComicModel({
    required this.name,
    required this.uniqueid,
    required this.ultimoCap,
    required this.totalViews,
    required this.autor,
    required this.thumb,
    required this.sinopse,
    required this.ratio,
    required this.scans,
    required this.dateUp,
    required this.dateMade,
    required this.generos,
    required this.isNotAtualiza,
    required this.isAdult,
  });

  InfoComicModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        uniqueid = json['uniqueid'],
        ultimoCap = json['ultimoCap'],
        totalViews = json['totalViews'],
        autor = json['autor'],
        thumb = json['thumb'],
        sinopse = json['sinopse'],
        ratio = json['ratio'] * 0.0,
        scans = json['scans'],
        dateUp = json['dateUp'],
        dateMade = json['dateMade'],
        isAdult = json['isAdult'] ?? false,
        isNotAtualiza = json['isNotAtualiza'] ?? false,
        generos = json['generos'];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uniqueid': uniqueid,
      'ultimoCap': ultimoCap,
      'totalViews': totalViews,
      'autor': autor,
      'thumb': thumb,
      'sinopse': sinopse,
      'ratio': ratio,
      'scans': scans,
      'dateUp': dateUp,
      'isNotAtualiza': isNotAtualiza,
      'dateMade': dateMade,
      'generos': generos,
      'isAdult': isAdult,
    };
  }
}
