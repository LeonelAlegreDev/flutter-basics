import 'package:flutter/material.dart';
import 'screens/counter_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Mejorado',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}