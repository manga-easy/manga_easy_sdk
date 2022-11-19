import 'dart:convert' as j;

import 'package:host_mangas/host_mangas.dart';

import '../../helpes.dart';
import '../manga/chapter.dart';
import '../manga/manga.dart';

class Historico {
  static String get collectionId => '617b5e10b202a';
  String? id;
  String uniqueid;
  Manga manga;
  String idUser;
  Chapter? capAtual;
  int updatedAt;
  int createdAt;
  bool isDeleted;
  List chapterLidos;

  Historico({
    this.capAtual,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.idUser,
    required this.manga,
    required this.chapterLidos,
    required this.uniqueid,
  });

  Historico.fromJson(dynamic json)
      : id = json['\$id'] ?? json['id'],
        uniqueid = json['uniqueid'] ?? Helps.convertUniqueid(json['idManga']),
        capAtual = json['capAtual'] != null ? Chapter.fromJson(Helps.decode(json['capAtual'])) : null,
        idUser = json['idUser'] ?? '',
        updatedAt = validateUpdatedAt(json),
        isDeleted = validateIsDeleted(json),
        chapterLidos = validaChaprterLido(json['chapterLidos']),
        manga = validateManga(json),
        createdAt = validateCreatedAt(json);

  Map<String, dynamic> toJson() {
    return {
      '\$id': id,
      'updatedAt': updatedAt,
      'isDeleted': isDeleted,
      'uniqueid': uniqueid,
      'manga': j.json.encode(manga),
      'capAtual': capAtual != null ? j.json.encode(capAtual) : null,
      'createdAt': createdAt,
      'chapterLidos': chapterLidos,
      'idUser': idUser,
    };
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

  static int validateUpdatedAt(Map<String, dynamic> json) {
    if (json['dataUp'] != null) {
      return json['dataUp'];
    }
    if (json['updatedAt'] != null) {
      return json['updatedAt'];
    }
    return DateTime.now().millisecondsSinceEpoch;
  }

  static int validateCreatedAt(Map<String, dynamic> json) {
    if (json['dataCria'] != null) {
      var date = json['dataCria'];
      if (date is DateTime) {
        return date.millisecondsSinceEpoch;
      }
      return DateTime.parse(date).millisecondsSinceEpoch;
    }
    if (json['createdAt'] != null) {
      return json['createdAt'];
    }
    return DateTime.now().millisecondsSinceEpoch;
  }

  static Manga validateManga(Map<String, dynamic> json) {
    if (json['manga'] != null) {
      return Manga.fromJson(Helps.decode(json['manga']));
    }
    return Manga.fromValue(
      capa: '',
      href: '',
      uniqueid: Helps.convertUniqueid(json['idManga']),
      title: json['idManga'],
      idHost: IHostManga.retornaIdHost(
        v: json['idManga'],
      ),
    );
  }

  static bool validateIsDeleted(Map<String, dynamic> json) {
    if (json['deletado'] != null) {
      return json['deletado'];
    }
    if (json['isDeleted'] != null) {
      return json['isDeleted'];
    }
    return false;
  }
}
