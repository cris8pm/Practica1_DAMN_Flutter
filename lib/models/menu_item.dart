import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String description;
  final IconData icon; // IconData es el tipo para iconos en Flutter
  final WidgetBuilder destinationBuilder; // Función que construye la pantalla de destino

  MenuItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.destinationBuilder,
  });
}