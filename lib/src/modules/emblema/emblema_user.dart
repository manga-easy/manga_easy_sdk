class EmblemaUser {
  static String get collectionId => '61b3be0d89c8a';
  String? id;
  String idEmblema;
  int timeCria;
  String userId;

  EmblemaUser({
    this.id,
    required this.timeCria,
    required this.userId,
    required this.idEmblema,
  });

  EmblemaUser.fromJson(dynamic json)
      : id = json['\$id'],
        timeCria = json['timeCria'],
        idEmblema = json['idEmblema'],
        userId = json['userId'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['idEmblema'] = idEmblema;
    data['timeCria'] = timeCria;
    data['userId'] = userId;

    return data;
  }
}
