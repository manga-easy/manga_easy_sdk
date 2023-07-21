class TemporadaModel {
  final String? id;
  final String nome;
  final int number;
  final int createdat;
  final int updatedat;

  const TemporadaModel({
    this.id,
    required this.createdat,
    required this.updatedat,
    required this.nome,
    required this.number,
  });

  factory TemporadaModel.empty() {
    return TemporadaModel(
      createdat: 0,
      updatedat: 0,
      nome: '',
      number: 0,
    );
  }

  TemporadaModel copyWith({
    String? id,
    String? nome,
    int? number,
    int? createdat,
    int? updatedat,
  }) {
    return TemporadaModel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      number: number ?? this.number,
      createdat: createdat ?? this.createdat,
      updatedat: updatedat ?? this.updatedat,
    );
  }
}
