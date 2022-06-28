class Permissions {
  static const String collectionId = '623f19fd634f690560fc';
  String? id;
  String userId;
  int value;
  Permissions({
    required this.userId,
    required this.value,
    this.id,
  });

  Permissions.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        value = json['value'],
        id = json[r'$id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['userId'] = userId;
    data['value'] = value;
    data[r'$id'] = id;
    return data;
  }
}
