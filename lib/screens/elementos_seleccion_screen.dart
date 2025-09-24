import 'package:flutter/material.dart';

class ElementosSeleccionScreen extends StatefulWidget {
  const ElementosSeleccionScreen({Key? key}) : super(key: key);

  @override
  State<ElementosSeleccionScreen> createState() => _ElementosSeleccionScreenState();
}

class _ElementosSeleccionScreenState extends State<ElementosSeleccionScreen> {
  bool _checkBoxValue = false;
  String? _selectedRadioOption = "Opción 1"; // Usamos String? para poder tener null al inicio si no hay seleccion
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elementos de Selección"),
      ),

      backgroundColor: Colors.green[50],

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "📝 Título: Elementos de Selección",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8.0),
            Text(
              "💡 Explicación: Estos elementos permiten al usuario elegir opciones. Los CheckBoxes para múltiples selecciones, RadioButtons para una única opción, y Switches para estados binarios (activar/desactivar).",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24.0),
            Text(
              "⚡ Demostración Interactiva:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 1: Checkbox
            Row(
              children: [
                Checkbox(
                  value: _checkBoxValue,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _checkBoxValue = newValue ?? false;
                    });
                  },
                ),
                const Text("Aceptar términos y condiciones"),
              ],
            ),
            Text("Checkbox: ${_checkBoxValue ? "Activado" : "Desactivado"}"),
            const SizedBox(height: 16.0),

            // Ejemplo 2: RadioButtons
            Text("Selecciona una opción:"),
            Column(
              children: [
                RadioListTile<String>(
                  title: const Text("Opción 1"),
                  value: "Opción 1",
                  groupValue: _selectedRadioOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedRadioOption = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Opción 2"),
                  value: "Opción 2",
                  groupValue: _selectedRadioOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedRadioOption = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Opción 3"),
                  value: "Opción 3",
                  groupValue: _selectedRadioOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedRadioOption = value;
                    });
                  },
                ),
              ],
            ),
            Text("Opción seleccionada: ${_selectedRadioOption ?? "Ninguna"}"),
            const SizedBox(height: 16.0),

            // Ejemplo 3: Switch
            Row(
              children: [
                Switch(
                  value: _switchValue,
                  onChanged: (bool newValue) {
                    setState(() {
                      _switchValue = newValue;
                    });
                  },
                ),
                const Text("Modo oscuro"),
              ],
            ),
            Text("Switch: ${_switchValue ? "Activado" : "Desactivado"}"),
          ],
        ),
      ),
    );
  }
}