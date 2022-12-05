import 'dart:convert';

import 'package:manga_easy_sdk/manga_easy_sdk.dart';

enum EnqueteStatus { progress, finished, started }

class EnqueteModel {
  static get collectionId => '62d83253c571222e666a';
  String? id;
  String name;
  String? bannerLink;
  List<Question> questions;
  int createDate;
  int? finishedDate;
  EnqueteStatus status;

  EnqueteModel({
    this.id,
    required this.name,
    required this.questions,
    required this.status,
    required this.createDate,
    this.bannerLink,
    required this.finishedDate,
  });

  EnqueteModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        bannerLink = json['bannerLink'],
        questions = (json['questions'] as List)
            .map((e) => Question.fromJson(Helps.decode(e)))
            .toList(),
        status = EnqueteStatus.values.elementAt(json['status']),
        createDate = json['createDate'],
        finishedDate = json['finishedDate'],
        id = json['\$id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['questions'] = questions.map((e) => json.encode(e)).toList();
    data['status'] = status.index;
    data['bannerLink'] = bannerLink;
    data['createDate'] = createDate;
    data['finishedDate'] = finishedDate;
    data['\$id'] = id;
    return data;
  }
}
