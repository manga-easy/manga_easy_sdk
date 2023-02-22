import 'dart:convert' as j;
import '../../helpes.dart';
import '../manga/manga.dart';

enum StatusLibrary {
  lendo('Lendo'),
  dropado('Dropado'),
  lido('Concluído'),
  planejo('Em espera');

  final String title;
  const StatusLibrary(this.title);
}

class LibraryModel {
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

  LibraryModel({
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

  LibraryModel.fromJson(Map<String, dynamic> json)
      : id = json['\$id'] ?? json['id'] ?? json['_uid'],
        idHost = json['idHost'],
        uniqueid = Helps.convertUniqueid(json['uniqueid'] ?? json['idManga']),
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
      return StatusLibrary.lendo.name;
    }
    if (status.isEmpty) {
      return StatusLibrary.lendo.name;
    }
    return status;
  }

  static bool validateIsDeleted(Map<String, dynamic> json) {
    if (json['isDeleted'] != null) {
      return json['isDeleted'];
    }

    if (json['deletado'] != null) {
      return json['deletado'];
    }
    return false;
  }

  static int validateUpdatedAt(Map<String, dynamic> json) {
    if (json['updatedAt'] != null) {
      return json['updatedAt'];
    }
    if (json['dataUpdade'] != null) {
      return json['dataUpdade'];
    }
    return DateTime.now().millisecondsSinceEpoch;
  }

  static int validateCreatedAt(Map<String, dynamic> json) {
    if (json['createdAt'] != null) {
      return json['createdAt'];
    }
    if (json['dataCria'] != null) {
      var date = json['dataCria'];
      if (date is DateTime) {
        return date.millisecondsSinceEpoch;
      }
      return DateTime.parse(date).millisecondsSinceEpoch;
    }
    return DateTime.now().millisecondsSinceEpoch;
  }

  static Manga validateManga(Map<String, dynamic> json) {
    if (json['manga'] != null) {
      return Manga.fromJson(Helps.decode(json['manga']));
    }
    return Manga(
      capa: '',
      href: '',
      uniqueid: Helps.convertUniqueid(json['idManga']),
      title: json['idManga'] ?? '',
      idHost: 0,
    );
  }
}
