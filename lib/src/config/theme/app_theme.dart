import 'package:flutter/material.dart';

const Color _customColor = Colors.indigo;

const List<Color> _colorThemes = [
  _customColor,
  Colors.green,
  Colors.blue,
  Colors.red
];

class AppTheme {
  int selectedColor;

  AppTheme({this.selectedColor = 0});

  ThemeData theme() {
    selectedColor > _colorThemes.length ? selectedColor = 0 : selectedColor;
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark, //tema escuro
    );
  }
}
