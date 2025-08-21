import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget{
  ShopScreen({super.key});
  final _backgroundColor = Color(0xFFC8E6C9); // Example background color
  final _textColor = Color(0xFF2E7D32); // Example text color
  final _title = 'Tienda';

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