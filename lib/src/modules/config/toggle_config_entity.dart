class ToggleConfigEntity {
  final String? id;
  final String name;
  final int updateAt;
  final String status;
  final String description;
  final dynamic value;

  ToggleConfigEntity({
    required this.id,
    required this.name,
    required this.updateAt,
    required this.status,
    required this.description,
    required this.value,
  });
}
