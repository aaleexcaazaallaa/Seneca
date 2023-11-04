import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{

  String user = "";
  String password = "";

  bool comprobarLogin(String usuario, String contrasena)
  {
    user = usuario;
    password = contrasena;
    return usuario != "" && password != "";
  }
}