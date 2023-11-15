class Usuarios {
  String? id;
  String? email;
  String? nombre;

  Usuarios({this.id, this.email, this.nombre});

  Usuarios.fromJson(Map<String, dynamic> json) => Usuarios{
    id = json['id'];
    email = json['email'];
    nombre = json['nombre'];
  }

  Map<String, dynamic> toJson() {
    'id' = id;
    data['email'] = email;
    data['nombre'] = nombre;
    return data;
  }
}