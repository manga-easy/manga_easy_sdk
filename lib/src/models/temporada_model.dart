class TemporadaModel {
  static String get collectionId => '61e8bc42189b4';
  String id;
  String nome;
  int datainit;
  int? datafim;
  int number;

  TemporadaModel({
    required this.id,
    required this.datafim,
    required this.datainit,
    required this.nome,
    required this.number,
  });
  TemporadaModel.fromJson(Map<String, dynamic> json)
      : datafim = json['datafim'],
        datainit = json['datainit'],
        nome = json['nome'],
        number = json['number'],
        id = json['\$id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['\$id'] = id;
    data['datafim'] = datafim;
    data['datainit'] = datainit;
    data['number'] = number;
    data['nome'] = nome;
    return data;
  }
}
