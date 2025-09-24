import 'package:flutter/material.dart';
import 'package:practica1_flutter/models/menu_item.dart';
import 'package:practica1_flutter/screens/botones_screen.dart';
import 'package:practica1_flutter/screens/elementos_informacion_screen.dart';
import 'package:practica1_flutter/screens/elementos_seleccion_screen.dart';
import 'package:practica1_flutter/screens/listas_screen.dart';
import 'package:practica1_flutter/screens/text_fields_screen.dart';
import 'package:practica1_flutter/widgets/menu_item_card.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> menuItems = [
      MenuItem(
        title: "TextFields",
        description: "Campos de texto para entrada de usuario.",
        icon: Icons.text_fields,
        destinationBuilder: (context) => const TextFieldsScreen(),
      ),
      MenuItem(
        title: "Botones",
        description: "Elementos interactivos para acciones del usuario.",
        icon: Icons.radio_button_checked, // Cambiar si hay un icono mejor
        destinationBuilder: (context) => const BotonesScreen(),
      ),
      MenuItem(
        title: "Elementos de Selección",
        description: "Checkboxes, RadioButtons y Switches.",
        icon: Icons.list_alt, // Cambiar si hay un icono mejor
        destinationBuilder: (context) => const ElementosSeleccionScreen(),
      ),
      MenuItem(
        title: "Listas",
        description: "Visualización de colecciones de datos.",
        icon: Icons.list,
        destinationBuilder: (context) => const ListasScreen(),
      ),
      MenuItem(
        title: "Elementos de Información",
        description: "Textos, imágenes y barras de progreso.",
        icon: Icons.info,
        destinationBuilder: (context) => const ElementosInformacionScreen(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Práctica 1 - Flutter UI"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return MenuItemCard(
            item: item,
            onTap: () {
              // Navegar a la pantalla de destino
              Navigator.push(
                context,
                MaterialPageRoute(builder: item.destinationBuilder),
              );
            },
          );
        },
      ),
    );
  }
}