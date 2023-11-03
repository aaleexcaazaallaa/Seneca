import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seneca/config/theme/app_theme.dart';
import 'package:seneca/presentation/providers/provider.dart';
import 'package:seneca/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider(),)
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 3).theme(),
        title: 'Seneca',
      ),
    );
  }
}