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
        questions = json['questions'],
        status = json['status'],
        createDate = json['createDate'],
        finishedDate = json['finishedDate'],
        id = json['id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['questions'] = questions;
    data['status'] = status;
    data['createDate'] = createDate;
    data['finishedDate'] = finishedDate;
    data['id'] = id;
    return data;
  }
}
