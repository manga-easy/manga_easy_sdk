class InfoComicModel {
  static String get collectionId => '62408a74a3081ee2886a';

  final String name;
  final String uniqueid;
  final String ultimoCap;
  final int totalViews;
  final String autor;
  final String thumb;
  final String sinopse;
  final double ratio;
  final String scans;
  final int dateUp;
  final int dateMade;
  final String generos;

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
  });

  InfoComicModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        uniqueid = json['uniqueid'],
        ultimoCap = json['ultimoCap'],
        totalViews = json['totalViews'],
        autor = json['autor'],
        thumb = json['thumb'],
        sinopse = json['sinopse'],
        ratio = double.parse(json['ratio']),
        scans = json['scans'],
        dateUp = json['dateUp'],
        dateMade = json['dateMade'],
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
    data['dateMade'] = dateMade;
    data['generos'] = generos;
    return data;
  }
}
