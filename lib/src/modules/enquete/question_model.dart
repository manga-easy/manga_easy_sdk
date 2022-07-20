class Question {
  String id;
  String name;

  Question({required this.id, required this.name});

  Question.fromJson(dynamic json)
      : name = json['name'],
        id = json['id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}
