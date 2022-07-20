import 'dart:convert' as j;

import '../../helpes.dart';
import '../manga/chapter.dart';
import '../manga/manga.dart';

class Historico {
  static String get collectionId => '617b5e10b202a';
  String? id;
  String idManga;
  String uniqueid;
  Manga? manga;
  String idUser;
  Chapter? capAtual;
  int dataUp;
  DateTime dataCria;
  bool deletado;
  List chapterLidos;

  Historico({
    this.capAtual,
    required this.dataCria,
    required this.idManga,
    required this.dataUp,
    required this.deletado,
    required this.idUser,
    required this.manga,
    required this.chapterLidos,
    required this.uniqueid,
  });

  Historico.fromJson(dynamic json)
      : id = json['\$id'] ?? json['id'],
        idManga = json['idManga'],
        uniqueid = Helps.convertUniqueid(json['idManga']),
        capAtual = json['capAtual'] != null ? Chapter.fromJson(Helps.decode(json['capAtual'])) : null,
        idUser = json['idUser'] ?? '',
        dataUp = validaDatatime(json['dataUp']),
        deletado = json['deletado'] ?? false,
        chapterLidos = validaChaprterLido(json['chapterLidos']),
        manga =
            json['manga'] != null && json['manga'] != "" ? Manga.fromJson(Helps.decode(json['manga'])) : null,
        dataCria = json['dataCria'] is DateTime ? json['dataCria'] : DateTime.parse(json['dataCria']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['idManga'] = idManga;
    data['dataUp'] = dataUp;
    data['deletado'] = deletado;
    data['uniqueid'] = uniqueid;
    data['manga'] = manga != null ? j.json.encode(manga!.toJson()) : null;
    data['capAtual'] = capAtual != null ? j.json.encode(capAtual!.toJson()) : null;
    data['dataCria'] = dataCria.toString();
    data['chapterLidos'] = chapterLidos;
    data['idUser'] = idUser;

    return data;
  }

  static validaDatatime(data) {
    if (data == null || data is DateTime) {
      return DateTime.now().millisecondsSinceEpoch;
    }
    return data;
  }

  static validaChaprterLido(data) {
    if (data == null || data is String) {
      return [];
    }
    return data;
  }
}
