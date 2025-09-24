import 'package:flutter/material.dart';

class ListasScreen extends StatelessWidget {
  const ListasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(20, (i) => "Elemento ${i + 1}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Listas (ListView.builder)"),
      ),
      backgroundColor: Colors.blueGrey[50],

      body: Column( // Usamos Column para el título y luego Expanded para la lista
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "📝 Título: Listas (ListView.builder)",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8.0),
                Text(
                  "💡 Explicación: Las listas (ListView.builder en Flutter) permiten mostrar grandes cantidades de datos de manera eficiente, renderizando solo los elementos visibles en pantalla, similar a RecyclerView.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24.0),
                Text(
                  "⚡ Demostración Interactiva:",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
          Expanded( // Expanded hace que la lista tome el espacio restante
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  elevation: 2.0,
                  child: ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(items[index]),
                    subtitle: Text("Detalle del ${items[index]}"),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${items[index]} seleccionado")),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}