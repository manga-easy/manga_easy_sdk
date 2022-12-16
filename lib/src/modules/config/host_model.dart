class HostModel {
  static String get collectionId => '6228a4a974bc61d675d7';
  String? id;
  int idHost;
  int order;
  String name;
  String host;
  String status;
  String interstitialAdUnitId;

  HostModel({
    this.id,
    required this.name,
    required this.host,
    required this.order,
    required this.status,
    required this.interstitialAdUnitId,
    required this.idHost,
  });

  HostModel.fromJson(Map<String, dynamic> json)
      : id = json['\$id'],
        name = json['name'],
        order = json['order'],
        status = json['status'],
        idHost = json['idHost'],
        interstitialAdUnitId = json['interstitialAdUnitId'],
        host = json['host'];

  HostModel.empty()
      : name = '',
        order = -1,
        status = '',
        idHost = -1,
        interstitialAdUnitId = '',
        host = '';

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      '\$id': id,
      'name': name,
      'host': host,
      'order': order,
      'idHost': idHost,
      'interstitialAdUnitId': interstitialAdUnitId,
    };
  }
}
