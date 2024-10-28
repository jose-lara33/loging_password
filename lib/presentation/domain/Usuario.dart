import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  final String id;
  final String nombre;
  final String? clave;
  final String? userClave;

  User({
    required this.id,
    required this.nombre,
    this.clave,
    this.userClave,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json["id"],
        nombre: json["nombre"],
        clave: json["clave"],
        userClave: json['userClave'] ?? '', 
      );
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "clave": clave,
        "clave ": userClave,
      };
}
