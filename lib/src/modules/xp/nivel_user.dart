class NivelUser {
  final String? id;
  final String name;
  final int total;
  final String temporada;
  final int lvl;
  final int timeCria;
  final int quantity;
  final int minute;
  final String userId;
  final int timeUp;
  final int createdat;
  final int updatedat;

  const NivelUser({
    this.id,
    required this.timeCria,
    required this.lvl,
    required this.quantity,
    required this.minute,
    required this.userId,
    required this.timeUp,
    required this.name,
    required this.total,
    required this.temporada,
    required this.createdat,
    required this.updatedat,
  });

  NivelUser copyWith({
    String? id,
    String? name,
    int? total,
    String? temporada,
    int? lvl,
    int? timeCria,
    int? quantity,
    int? minute,
    String? userId,
    int? timeUp,
    int? createdat,
    int? updatedat,
  }) {
    return NivelUser(
      id: id ?? this.id,
      name: name ?? this.name,
      total: total ?? this.total,
      temporada: temporada ?? this.temporada,
      lvl: lvl ?? this.lvl,
      timeCria: timeCria ?? this.timeCria,
      quantity: quantity ?? this.quantity,
      minute: minute ?? this.minute,
      userId: userId ?? this.userId,
      timeUp: timeUp ?? this.timeUp,
      createdat: createdat ?? this.createdat,
      updatedat: updatedat ?? this.updatedat,
    );
  }
}
