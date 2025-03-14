import 'package:http/http.dart' as http;
import 'dart:convert';

class User{
  
  int? id;
  String? nombre;
  int? edad;
  String? profesion;
  String? correo;

  
  User(jsonString){
    Map<String, dynamic> map = jsonDecode(jsonString);
    id = map['id'];
    nombre = map['nombre'];
    edad = map['edad'];
    profesion = map['profesion'];
    correo = map['correo'];
  }
  
}


void main()async{
  
  var url = Uri.http('localhost:3000', 'user/1');
  print("--------------------------");
  print("Cargando solicitud...");
  print("--------------------------");
  var res = await http.get(url);
  
  String json = res.body;

  if (res.statusCode == 200){
    User users = User(json);
    print("ID: ${users.id}");
    print("Nombre: ${users.nombre}");
    print("Edad: ${users.edad}");
    print("Profesion: ${users.profesion}");
    print("Correo: ${users.correo}");
  } else {
    print("No se pudo realizar la solicitud");
  }

}