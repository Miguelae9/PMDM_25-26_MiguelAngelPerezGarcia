import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Widget principal que define la configuración de la aplicación
      debugShowCheckedModeBanner:
          false, // Oculta la etiqueta de "Debug" en la esquina
      title: 'Relación de Ejercicios Tema 1', // Título
      home: Scaffold(
        // Proporciona la estructura base de la página (AppBar, body, y Drawer)
        backgroundColor: const Color.fromARGB(255, 253, 159, 245),
        appBar: AppBar(
          title: Text("Relación de Ejercicios"), // Título de la App Bar
          backgroundColor: const Color.fromARGB(186, 209, 116, 252),
        ),
        drawer: Drawer(
          // Menú lateral (hamburguesa) que se desliza desde el borde
          backgroundColor: const Color.fromARGB(255, 16, 1, 100),
          child:
              MenuLateral(), // Usa el widget importado para construir el contenido del menú
        ),
        body: Center(
          // Centra el contenido principal
          child: Text(
            // Muestra un texto simple en el centro de la pantalla
            '¡Abre el menú lateral para navegar!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
