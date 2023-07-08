class RecomendacoesModel {
  String? id;
  String uniqueid;
  String title;
  String link;
  @Deprecated('User createAt')
  int dataCria;
  int createdAt;
  int updatedAt;

  RecomendacoesModel({
    this.id,
    required this.title,
    required this.link,
    required this.uniqueid,
    required this.dataCria,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RecomendacoesModel.empty() {
    return RecomendacoesModel(
      title: '',
      link: '',
      uniqueid: 'uniqueid',
      dataCria: DateTime.now().millisecondsSinceEpoch,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    );
  }
}
