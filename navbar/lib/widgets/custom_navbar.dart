import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: _getSelectedColor(currentIndex),
      unselectedItemColor: Colors.grey[600],
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Principal',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Tienda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 14,
      unselectedFontSize: 13,
      showUnselectedLabels: true,
    );
  }

  // Método para devolver el color seleccionado según la sección
  Color _getSelectedColor(int index) {
    switch (index) {
      case 0:
        return const Color(0xFF1976D2); // Azul
      case 1:
        return const Color(0xFF388E3C); // Verde
      case 2:
        return const Color(0xFFFBC02D); // Amarillo
      default:
        return Colors.blueGrey;
    }
  }
}