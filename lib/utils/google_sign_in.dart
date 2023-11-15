import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/providers/provider.dart';
import 'package:seneca/services/firebase_service.dart';
import 'package:seneca/utils/constants.dart';

class GoogleSignIn extends StatefulWidget {
  const GoogleSignIn({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GoogleSignInState createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {
  bool isLoading = false;
  
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    return  !isLoading? SizedBox(
      width: 400,
      height: 50,
      child: OutlinedButton.icon(
        icon: const FaIcon(FontAwesomeIcons.google),
        onPressed: () async {

          setState(() {
            isLoading = true;
          });
          
          FirebaseService service = FirebaseService();
          try {
           await service.signInwithGoogle();
           // ignore: use_build_context_synchronously
           provider.compruebaLoginGoogle();
           // ignore: use_build_context_synchronously
           context.goNamed("home");
                    
          } catch(e){
            if(e is FirebaseAuthException){
              showMessage(e.message!);
            }
          }
          setState(() {
            isLoading = false;
          });
        },
        label: const Text(
          Constants.textSignInGoogle,
          style: TextStyle(
              color: Constants.kBlackColor, fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Constants.kGreyColor),
            side: MaterialStateProperty.all<BorderSide>(BorderSide.none)),
      ),
    ) : const CircularProgressIndicator();
  }

  void showMessage(String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Error"),
            content: Text(message),
            actions: [
              TextButton(
                child: const Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
