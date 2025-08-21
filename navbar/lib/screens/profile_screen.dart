import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  ProfileScreen({super.key});
  final _backgroundColor = Color(0xFFFFF9C4); // Example background color
  final _textColor = Color(0xFFF9A825); // Example text color
  final _title = 'Perfil';

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