class InfoComicModel {
  static String get collectionId => '62408a74a3081ee2886a';
  String? id;
  String name;
  String uniqueid;
  String ultimoCap;
  int totalViews;
  String autor;
  String thumb;
  String sinopse;
  double ratio;
  String scans;
  int updatedAt;
  int createdAt;
  String generos;
  bool isAdult;

  InfoComicModel({
    this.id,
    required this.name,
    required this.uniqueid,
    required this.ultimoCap,
    required this.totalViews,
    required this.autor,
    required this.thumb,
    required this.sinopse,
    required this.ratio,
    required this.scans,
    required this.updatedAt,
    required this.createdAt,
    required this.generos,
    required this.isAdult,
  });

  InfoComicModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        id = json['_id'],
        uniqueid = json['uniqueid'],
        ultimoCap = json['ultimo_cap'],
        totalViews = json['total_views'],
        autor = json['autor'],
        thumb = json['thumb'],
        sinopse = json['sinopse'],
        ratio = json['ratio'] * 0.0,
        scans = json['scans'],
        updatedAt = json['updated_at'],
        createdAt = json['created_at'],
        isAdult = json['is_adult'] ?? false,
        generos = json['generos'];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      '_id': id,
      'uniqueid': uniqueid,
      'ultimo_cap': ultimoCap,
      'total_views': totalViews,
      'autor': autor,
      'thumb': thumb,
      'sinopse': sinopse,
      'ratio': ratio,
      'scans': scans,
      'updated_at': updatedAt,
      'created_at': createdAt,
      'generos': generos,
      'is_adult': isAdult,
    };
  }
}
