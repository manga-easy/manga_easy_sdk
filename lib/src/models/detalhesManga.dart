import 'chapter.dart';
import 'gender.dart';

class DetalhesManga {
  String? id;
  String title;
  String capa;
  String sinopse;
  List<Gender> generos;
  String autor;
  String artista;
  List<Chapter> capitulos;
  String ano;
  String scans;
  String status;

  DetalhesManga({
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
  });

  DetalhesManga.fromJson(dynamic json)
      : id = json['id'],
        ano = json['ano'] ?? '',
        scans = json['scans'] ?? '',
        status = json['status'] ?? '',
        title = json['title'],
        capa = json['capa'],
        sinopse = json['sinopse'],
        generos =
            json['generos'] != null ? json['generos'].map<Gender>((e) => Gender.fromJson(e)).toList() : [],
        autor = json['autor'],
        artista = json['artista'],
        capitulos = json['capitulos'] != null
            ? json['capitulos'].map<Chapter>((e) => Chapter.fromJson(e)).toList()
            : [];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = status;
    data['scans'] = scans;
    data['ano'] = ano;
    data['title'] = this.title;
    data['capa'] = this.capa;
    data['sinopse'] = this.sinopse;
    data['generos'] = this.generos.map((v) => v.toJson()).toList();
    data['autor'] = this.autor;
    data['artista'] = this.artista;
    data['capitulos'] = this.capitulos.map((v) => v.toJson()).toList();
    return data;
  }
}
