class Region {
  int id;
  String name;
  List<String> subregions;
  DateTime createdAt;
  DateTime updatedAt;

  Region({
    required this.id,
    required this.name,
    required this.subregions,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
      id: json['id'],
      name: json['name'],
      subregions: List<String>.from(json['subregions']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
