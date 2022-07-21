import 'dart:convert';

import 'package:sdk_manga_easy/sdk_manga_easy.dart';
import 'package:sdk_manga_easy/src/modules/enquete/question_model.dart';

enum EnqueteStatus { progress, finished }

class EnqueteModel {
  static get collectionId => '62d83253c571222e666a';
  String? id;
  String name;
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
    required this.finishedDate,
  });

  EnqueteModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        questions = (json['questions'] as List).map((e) => Question.fromJson(Helps.decode(json))).toList(),
        status = EnqueteStatus.values.elementAt(json['status']),
        createDate = json['createDate'],
        finishedDate = json['finishedDate'],
        id = json['\$id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['questions'] = questions.map((e) => json.encode(e)).toList();
    data['status'] = status.index;
    data['createDate'] = createDate;
    data['finishedDate'] = finishedDate;
    data['\$id'] = id;
    return data;
  }
}
