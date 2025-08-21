// Archivo: lib/app.dart
// Aquí configuramos la app: el tema y la pantalla inicial.

import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'constants/strings.dart';
import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kTituloApp,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: kBackgroundColor, // Color de fondo global
      ),
      home: HomeScreen(), // Pantalla inicial
      debugShowCheckedModeBanner: false,
    );
  }
}