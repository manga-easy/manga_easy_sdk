class Notificacao {
  String? id;
  String titulo;
  String menssege;
  String image;
  @Deprecated("Campo depreciado use createAt")
  int dateMade;
  int createAt;
  int updateAt;

  Notificacao({
    this.id,
    required this.menssege,
    required this.titulo,
    required this.dateMade,
    required this.image,
    required this.createAt,
    required this.updateAt,
  });
}
