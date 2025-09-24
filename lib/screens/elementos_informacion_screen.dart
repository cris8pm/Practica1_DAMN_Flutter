import 'package:flutter/material.dart';

class ElementosInformacionScreen extends StatefulWidget {
  const ElementosInformacionScreen({Key? key}) : super(key: key);

  @override
  State<ElementosInformacionScreen> createState() => _ElementosInformacionScreenState();
}

class _ElementosInformacionScreenState extends State<ElementosInformacionScreen> {
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _animateProgress();
  }

  void _animateProgress() async {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() {
        _progressValue = i / 10;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elementos de Información"),
      ),

      backgroundColor: Colors.orange.shade50,

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "📝 Título: Elementos de Información",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8.0),
            Text(
              "💡 Explicación: Estos elementos se utilizan para mostrar información al usuario, como texto (Text), imágenes (Image) o el progreso de una tarea (ProgressIndicator).",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24.0),
            Text(
              "⚡ Demostración Interactiva:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 1: Text
            Text(
              "Este es un ejemplo de texto informativo. Puedes cambiar su estilo, tamaño y color.",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),

            // Ejemplo 2: Image
            Center(
              child: Image.asset(
                'assets/denver.png',
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8.0),
            const Center(child: Text("Imagen de ejemplo")),
            
            const SizedBox(height: 16.0),


            // Ejemplo 3: ProgressBar (Circular y Lineal)
            Text("Progreso de descarga:", style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8.0),
            // Linear Progress Bar
            LinearProgressIndicator(
              value: _progressValue, // Valor de 0.0 a 1.0
            ),
            const SizedBox(height: 8.0),
            // Circular Progress Bar
            Center(
              child: CircularProgressIndicator(
                value: _progressValue,
              ),
            ),
            const SizedBox(height: 8.0),
            Center(child: Text("Cargando... (${(_progressValue * 100).toInt()}%)")),
          ],
        ),
      ),
    );
  }
}