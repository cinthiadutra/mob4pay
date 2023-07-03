import 'package:flutter/material.dart';

class Mob4payUi {
  Mob4payUi._();

  static ThemeData theme = ThemeData(
      appBarTheme: AppBarTheme(color: Colors.indigo[800], centerTitle: false),
      primaryColor: Colors.indigo[800],
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.indigo[800],
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedItemColor: Colors.grey));
}
