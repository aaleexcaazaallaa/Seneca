import 'package:flutter/material.dart';
import 'package:seneca/config/theme/app_theme.dart';
import 'package:seneca/presentation/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      title: 'Seneca',
      home: const LoginScreen(),
    );
  }
}