import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seneca/infrastructures/models/usuarios.dart';
import 'package:seneca/utils/get_user.dart';

class AppProvider extends ChangeNotifier{

  String user = "";
  String password = "";
  final getUser = GetUser();

  bool comprobarLogin(String usuario, String contrasena)
  {
    user = usuario;
    password = contrasena;
    return usuario != "" && usuario == "x" && password != "" && password == "x";
  }

  bool compruebaLoginGoogle()
  {
    User? userGoogle = FirebaseAuth.instance.currentUser;
    user = userGoogle!.displayName!;
    return user.isNotEmpty && compruebaUsuarioList();
  }

  bool compruebaUsuarioList(){
    List <Usuarios> userList = getUser.getUser() as List<Usuarios>;
    FirebaseAuth auth = FirebaseAuth.instance;
    for(Usuarios user in userList)
    {
      if(user.email == auth.currentUser?.email)
      {
        return true;
      }
    }
    return false;
  }
}