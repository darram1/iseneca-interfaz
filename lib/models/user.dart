import 'dart:convert';

class User {
  String id;
  String usuario;
  String clave;

  User({required this.id, required this.usuario, required this.clave});


  factory User.fromJson(String str) => User.fromMaps(json.decode(str));
  
  factory User.fromMaps(Map<String, dynamic> json) => User(
    id: json['id'], 
    usuario: json['usuario'], 
    clave: json['clave']
  );
}
