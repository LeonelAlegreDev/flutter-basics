// Archivo: lib/screens/home_screen.dart
// Esta es la pantalla principal donde se muestra el mensaje centrado.

import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar es la barra superior de la app, con el título.
      appBar: AppBar(
        title: Text(kTituloApp),
        centerTitle: true,
        backgroundColor: kAppBarColor, // Color de la barra superior
      ),
      // Center centra su hijo tanto vertical como horizontalmente.
      backgroundColor: kBackgroundColor, // Color de fondo de la pantalla
      body: Center(
        // Text muestra el mensaje personalizado.
        child: Text(
          kHolaMundoMensaje,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: kTextColorDark,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}