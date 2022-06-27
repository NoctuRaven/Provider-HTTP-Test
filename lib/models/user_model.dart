import 'dart:convert';

class UserModel {
  String createAt;
  String name;
  String avatar;
  String id;
  UserModel({
    required this.createAt,
    required this.name,
    required this.avatar,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createAt': createAt,
      'name': name,
      'avatar': avatar,
      'id': id,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      createAt: map['createAt'] ?? " ",
      name: map['name'] ?? " ",
      avatar: map['avatar'] ?? " ",
      id: map['id'] ?? " ",
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
