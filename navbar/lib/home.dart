import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/shop_screen.dart';
import 'screens/profile_screen.dart';
import 'widgets/custom_navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // Lista de las screens a mostrar, correspondiendo al orden del navbar
  final List<Widget> _screens = [
    MainScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  void _onNavBarTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onNavBarTap,
      ),
    );
  }
}