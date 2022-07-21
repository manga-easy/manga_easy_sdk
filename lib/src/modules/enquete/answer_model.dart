import 'package:sdk_manga_easy/src/modules/enquete/question_model.dart';

class AnswerModel {
  static get collectionId => '62d832e1453c870f4138';
  String? id;
  String idUser;
  String idEnquente;
  int createDate;
  Question answer;

  AnswerModel({
    this.id,
    required this.answer,
    required this.createDate,
    required this.idEnquente,
    required this.idUser,
  });

  AnswerModel.fromJson(Map<String, dynamic> json)
      : answer = Question.fromJson(json['answer']),
        createDate = json['createDate'],
        idEnquente = json['idEnquente'],
        idUser = json['idUser'],
        id = json['id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['answer'] = answer.toJson();
    data['createDate'] = createDate;
    data['idEnquente'] = idEnquente;
    data['idUser'] = idUser;
    data['id'] = id;
    return data;
  }
}
