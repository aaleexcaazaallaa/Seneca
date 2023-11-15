import 'dart:convert';

List<Usuarios> userFromJson(String str) => List<Usuarios>.from(json.decode(str).map((x) => Usuarios.fromJson(x)));

String userToJson(List<Usuarios> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Usuarios {
  String id;
  String email;
  String nombre;

  Usuarios({
    required this.id,
    required this.email,
    required this.nombre,
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) => Usuarios(
    id: json["id"],
    email: json["email"],
    nombre: json["nombre"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "nombre": nombre,
  };
}