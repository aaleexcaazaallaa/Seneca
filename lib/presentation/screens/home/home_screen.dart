import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/providers/provider.dart';
import 'package:seneca/services/firebase_service.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    final provider = context.watch<AppProvider>();
    return Scaffold
    (
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(width: 500,height: 150,color:const Color.fromARGB(255, 31, 77, 184),child: Center(child:
              Transform.scale
              (
                scale: 0.90,
                child: Image.asset("assets/images/SenecaLogoSegundaPantalla.png")
              )
            )),
            const SizedBox(height: 50),
            Text("Usuario: ${provider.user}")
          ]
        )
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
            spreadRadius: 3,
            ),
          ],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    color: const Color.fromARGB(255, 141, 141, 141),
                    onPressed: () {
                      FirebaseService().signOutFromGoogle();
                    },
                    icon: const Icon(Icons.home),
                  ),
                  const Text('Inicio'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    color: const Color.fromARGB(255, 141, 141, 141),
                    onPressed: () {
                      
                    },
                    icon: const Icon(Icons.calendar_month),
                  ),
                  const Text('Agenda'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    color: const Color.fromARGB(255, 141, 141, 141),
                    onPressed: () {
                      
                    },
                    icon: const Icon(Icons.chat_outlined),
                  ),
                  const Text('Comunicaciones'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    color: const Color.fromARGB(255, 141, 141, 141),
                    onPressed: () {
                      
                    },
                    icon: const Icon(Icons.menu),
                  ),
                  const Text('Menú'),
                ],
              ),
            ],
          ),
        ),
    );
  }
}