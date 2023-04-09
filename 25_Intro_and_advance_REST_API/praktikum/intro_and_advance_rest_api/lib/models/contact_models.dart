class UserModels {
  int? id;
  String? name;
  String? phone;

  UserModels(
    this.id,
    this.name,
    this.phone,
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
    };
  }

  UserModels.fromJson(Map<String, dynamic> json) {
    name = json['name'];

    id = json['id'];
    phone = json['phone'];
  }
  Map<String, dynamic> toJson() {
    // var map = new Map<String, dynamic>();
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    return data;
  }
}
