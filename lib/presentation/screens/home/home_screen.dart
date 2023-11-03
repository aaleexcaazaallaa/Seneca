import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: const Color.fromARGB(255, 31, 77, 184),
      body: SingleChildScrollView(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Transform.scale(
                scale: 1.10,
                child: Image.asset("assets/images/SenecaLogo.png")
                ),
            ]
          )
        )
      ))
    );
  }
}