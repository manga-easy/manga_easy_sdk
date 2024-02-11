import '../../../manga_easy_sdk.dart';

class DetalhesManga {
  String? id;
  String title;
  String uniqueid;
  String capa;
  String sinopse;
  List<Gender> generos;
  String autor;
  String artista;
  List<Chapter> capitulos;
  String ano;
  String scans;
  String status;
  int idHost;

  DetalhesManga({
    required this.uniqueid,
    required this.title,
    required this.capa,
    required this.sinopse,
    required this.generos,
    required this.autor,
    required this.artista,
    required this.capitulos,
    required this.ano,
    required this.scans,
    required this.status,
    required this.idHost,
  });

  DetalhesManga.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        uniqueid = json['uniqueid'] ?? Helps.convertUniqueid(json['title']),
        idHost = json['idHost'] ?? 0,
        ano = json['ano'] ?? '',
        scans = json['scans'] ?? '',
        status = json['status'] ?? '',
        title = json['title'],
        capa = json['capa'],
        sinopse = json['sinopse'],
        generos = json['generos'] != null
            ? json['generos'].map<Gender>((e) => Gender.fromJson(e)).toList()
            : [],
        autor = json['autor'],
        artista = json['artista'],
        capitulos = json['capitulos'] != null
            ? json['capitulos']
                .map<Chapter>((e) => Chapter.fromJson(Map.from(e)))
                .toList()
            : [];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['scans'] = scans;
    data['ano'] = ano;
    data['title'] = title;
    data['capa'] = capa;
    data['idHost'] = idHost;
    data['sinopse'] = sinopse;
    data['generos'] = generos.map((v) => v.toJson()).toList();
    data['autor'] = autor;
    data['artista'] = artista;
    data['uniqueid'] = uniqueid;
    data['capitulos'] = capitulos.map((v) => v.toJson()).toList();
    return data;
  }

  Chapter? get firstChapter {
    final chapters = capitulos.toList();
    chapters.sort(
      (a, b) => a.number.compareTo(b.number),
    );
    return chapters.firstOrNull;
  }
}
