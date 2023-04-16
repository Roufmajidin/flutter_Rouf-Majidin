class FoodModels {
  final int? id;
  final String name;

  FoodModels({required this.id, required this.name});
  factory FoodModels.fromJson(Map<String, dynamic> json) => FoodModels(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
