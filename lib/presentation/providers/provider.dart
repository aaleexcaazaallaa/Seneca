import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{

  String user = "";
  String password = "";

  bool comprobarLogin(String usuario, String contrasena)
  {
    user = usuario;
    password = contrasena;
    return usuario != "" && usuario == "x" && password != "" && password == "x";
  }

   bool compruebaLoginGoogle(){
    User? userGoogle = FirebaseAuth.instance.currentUser;
    user = userGoogle!.displayName!;
    return user.isNotEmpty;
    
  }
}