import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  MainScreen({super.key});
  final _backgroundColor = Color(0xFFBBDEFB); // Example background color
  final _textColor = Color(0xFF0D47A1); // Example text color
  final _title = 'Principal';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: Center(
        child: Text(
          _title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: _textColor,
          ),
        ),
      ),
    );
  }  
}