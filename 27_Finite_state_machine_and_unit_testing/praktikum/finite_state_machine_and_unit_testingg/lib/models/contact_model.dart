class ContactModel {
  late String id;
  late String name;
  late String phoneNumber;

  ContactModel({
    required this.id,
    required this.name,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }

  ContactModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    phoneNumber = map['phoneNumber'];
  }
  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phoneNumber"],
      );
}
