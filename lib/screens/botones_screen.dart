import 'package:flutter/material.dart';

class BotonesScreen extends StatelessWidget {
  const BotonesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botones"),
      ),

      backgroundColor: Colors.yellow[50],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "📝 Título: Botones",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8.0),
            Text(
              "💡 Explicación: Los botones permiten a los usuarios realizar acciones. Hay varios tipos, como botones de texto, con icono, o solo iconos.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24.0),
            Text(
              "⚡ Demostración Interactiva:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 1: ElevatedButton (Botón Elevado/Relleno)
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("ElevatedButton presionado")),
                  );
                },
                child: const Text("Hacer algo"),
              ),
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 2: OutlinedButton (Botón Contorneado)
            Center(
              child: OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("OutlinedButton presionado")),
                  );
                },
                child: const Text("Guardar cambios"),
              ),
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 3: TextButton (Botón de Texto)
            Center(
              child: TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("TextButton presionado")),
                  );
                },
                child: const Text("Cancelar"),
              ),
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 4: FloatingActionButton (FAB)
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("FAB presionado")),
                  );
                },
                child: const Icon(Icons.add),
              ),
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 5: IconButton (similar a ImageButton, usando un Icono)
            Center(
              child: IconButton(
                icon: const Icon(Icons.settings, size: 48.0),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("IconButton de ajustes presionado")),
                  );
                },
              ),
            ),
            const SizedBox(height: 8.0),
            const Center(child: Text("Botón de icono (ajustes)")),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}