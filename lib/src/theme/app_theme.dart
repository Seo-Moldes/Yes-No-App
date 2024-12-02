import 'package:flutter/material.dart';

const Color customColor = Color.fromARGB(0, 223, 14, 14);
const List<Color> colorThemes = [
customColor,
 Color.fromARGB(255, 221, 22, 22),
 Color.fromARGB(255, 35, 163, 19),
 Color.fromRGBO(185, 171, 38, 1),
 Color.fromARGB(255, 84, 9, 182),
 
];

class AppTheme {
  final int selectedColor;
  AppTheme({

    this.selectedColor = 0
  });
 
  ThemeData theme() {
    return ThemeData(
      
      useMaterial3: true,
      colorSchemeSeed: colorThemes[selectedColor]
    );
    
  }
}
