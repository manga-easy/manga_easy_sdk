import 'dart:convert' as j;
import 'package:host_mangas/host_mangas.dart';

import '../../helpes.dart';
import '../manga/manga.dart';

enum StatusBiblioteca { lendo, dropado, lido, planejo }

class Biblioteca {
  static String get collectionId => '617b5db178fd3';
  String? id;
  int idHost;
  String idUser;
  bool isDeleted;
  int createdAt;
  int updatedAt;
  Manga manga;
  String status;
  String uniqueid;
  bool isSync;

  Biblioteca({
    this.id,
    required this.idHost,
    required this.idUser,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.manga,
    required this.status,
    required this.uniqueid,
    required this.isSync,
  });

  Biblioteca.fromJson(Map<String, dynamic> json)
      : id = json['\$id'] ?? json['id'],
        idHost = json['idHost'],
        uniqueid = json['uniqueid'] ?? Helps.convertUniqueid(json['idManga']),
        idUser = json['idUser']?.toString() ?? '',
        updatedAt = validateUpdatedAt(json),
        isDeleted = validateIsDeleted(json),
        status = validateStatus(json['status']),
        isSync = json['isSync'] ?? false,
        manga = validateManga(json),
        createdAt = validateCreatedAt(json);

  Map<String, dynamic> toJson() {
    return {
      '\$id': id,
      'idHost': idHost,
      'idUser': idUser,
      'uniqueid': uniqueid,
      'updatedAt': updatedAt,
      'isDeleted': isDeleted,
      'createdAt': createdAt,
      'status': status,
      'manga': j.json.encode(manga),
      'isSync': isSync,
    };
  }

  static validateStatus(String? status) {
    if (status == null) {
      return StatusBiblioteca.lendo.name;
    }
    if (status.isEmpty) {
      return StatusBiblioteca.lendo.name;
    }
    return status;
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

  static int validateUpdatedAt(Map<String, dynamic> json) {
    if (json['dataUpdade'] != null) {
      return json['dataUpdade'];
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
    if (json['manga']) {
      return Manga.fromJson(Helps.decode(json['manga']));
    }
    return Manga.fromValue(
      capa: '',
      href: '',
      title: json['idManga'],
      idHost: IHostManga.retornaIdHost(
        v: json['idManga'],
      ),
    );
  }
}
