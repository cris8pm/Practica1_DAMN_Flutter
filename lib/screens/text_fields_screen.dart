import 'package:flutter/material.dart';

class TextFieldsScreen extends StatefulWidget {
  const TextFieldsScreen({Key? key}) : super(key: key);

  @override
  State<TextFieldsScreen> createState() => _TextFieldsScreenState();
}

class _TextFieldsScreenState extends State<TextFieldsScreen> {
  String _name = '';
  String _phoneNumber = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFields (Input de Texto)"),
      ),
      backgroundColor: Colors.lightBlue[50],
      
      body: SingleChildScrollView( // Permite desplazamiento si el contenido excede el tamaño
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "📝 Título: Campos de Texto (TextFields)",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8.0),
            Text(
              "💡 Explicación: Los TextFields permiten a los usuarios introducir y editar texto. Son fundamentales para formularios, búsquedas y cualquier interacción que requiera entrada de datos.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24.0),
            Text(
              "⚡ Demostración Interactiva:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 1: TextField Básico
            TextField(
              decoration: const InputDecoration(
                labelText: "Nombre de usuario",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 8.0),
            Text("Texto actual: $_name"),
            const SizedBox(height: 16.0),

            // Ejemplo 2: TextField con Icono y teclado numérico
            TextField(
              decoration: const InputDecoration(
                labelText: "Número de teléfono",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                setState(() {
                  _phoneNumber = value;
                });
              },
            ),
            const SizedBox(height: 8.0),
            Text("Número ingresado: $_phoneNumber"),
            const SizedBox(height: 16.0),

            // Ejemplo 3: Password TextField
            TextField(
              decoration: const InputDecoration(
                labelText: "Contraseña",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true, // Oculta el texto
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            const SizedBox(height: 8.0),
            Text("Contraseña (oculta): ${'*' * _password.length}"),
          ],
        ),
      ),
    );
  }
}