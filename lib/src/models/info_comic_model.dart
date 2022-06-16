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
        isNotAtualiza = json['isNotAtualiza'] ?? false,
        generos = json['generos'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['uniqueid'] = uniqueid;
    data['ultimoCap'] = ultimoCap;
    data['totalViews'] = totalViews;
    data['autor'] = autor;
    data['thumb'] = thumb;
    data['sinopse'] = sinopse;
    data['ratio'] = ratio;
    data['scans'] = scans;
    data['dateUp'] = dateUp;
    data['isNotAtualiza'] = isNotAtualiza;
    data['dateMade'] = dateMade;
    data['generos'] = generos;
    return data;
  }
}
