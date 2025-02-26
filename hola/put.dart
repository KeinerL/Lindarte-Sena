import 'package:http/http.dart' as http;
import 'dart:convert';


class User{
  
  String? userId;
  int? id;
  String? title;
  String? body;
  
  User(jsonString){
    Map<String, dynamic> map = jsonDecode(jsonString);
    userId = map['userId'];
    id = map['id'];
    title = map['title'];
    body = map['body'];
  }
  
}

void main()async{
  
  var url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');
  print("--------------------------");
  print("Cargando solicitud...");
  print("--------------------------");
  var res = await http.put(url, body:{
    "userId": "1",
    "id": "",
    "title": "Hello World",
    "body": "hola soy de colombia.."
    });
  
  print(res.body);
  print(res.statusCode);
  
  if (res.statusCode == 200){
    print("--------------------------");
    print("Solicitud confirmada!!");
    print("--------------------------");
    User a = User(res.body);
    print("userId: ${a.userId}");
    print("id: ${a.id}");
    print("title: ${a.title}");
    print("body: ${a.body}");
  } else{
    print("No se pudo realizar la solicitud");
  }
  
}