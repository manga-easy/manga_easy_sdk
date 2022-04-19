class User {
  static const String collectionIdAdmin = '';
  String? id;
  String name;
  int registration;
  bool status;
  int passwordUpdate;
  String email;
  bool emailVerification;
  Prefs prefs;

  User({
    this.id,
    required this.name,
    required this.registration,
    required this.status,
    required this.passwordUpdate,
    required this.email,
    required this.emailVerification,
    required this.prefs,
  });

  User.fromJson(dynamic json)
      : id = json['\$id'],
        name = json['name'],
        registration = json['registration'],
        status = json['status'] is bool ? json['status'] : true,
        passwordUpdate = json['passwordUpdate'],
        email = json['email'],
        prefs = Prefs.fromJson(json['prefs']),
        emailVerification = json['emailVerification'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['name'] = name;
    data['registration'] = registration;
    data['status'] = status;
    data['passwordUpdate'] = passwordUpdate;
    data['email'] = email;
    data['prefs'] = prefs.toJson();
    data['emailVerification'] = emailVerification;
    return data;
  }
}

class Prefs {
  String provider;
  String tokenFcm;
  Prefs({
    required this.provider,
    required this.tokenFcm,
  });
  Prefs.fromJson(dynamic json)
      : tokenFcm = json['tokenFcm'] ?? '',
        provider = json['provider'] ?? '';

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['provider'] = provider;
    data['tokenFcm'] = tokenFcm;
    return data;
  }
}
