import 'package:firebase_auth/firebase_auth.dart';
import 'package:seneca/infrastructures/models/usuarios.dart';


class GetUser 
{
  final _dio = Dio();

  Future<List<Users>> getUser() async{
    final response = await _dio.get("https://script.google.com/macros/s/AKfycbxm--bePZWYm83eBL6CaAqbaXU4wkC0GN6V4rwXbUVp4zEWHOGmUbX6KbVE61CRWj5Fzw/exec?spreadsheetId=1Nm1Id8j11fqqLngGMhMlhrRjCsVfnCpLJQNHi2_XIoI&sheet=usuarios");
  
    final List<User> usersList = UserInfo.fromJson(response.data);

    
  }
}