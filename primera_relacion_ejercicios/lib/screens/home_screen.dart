import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Clase raíz de la aplicación

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Widget principal que define la configuración de la aplicación
      debugShowCheckedModeBanner:
          false, // Oculta la etiqueta de "Debug" en la esquina
      title: 'Relación de Ejercicios', // Título
      // Tema general que se aplicará a todas las pantallas
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 61, 144, 253),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          foregroundColor: Color.fromARGB(255, 201, 187, 61),
          centerTitle: true,
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 201, 187, 61),
          ),
          bodyMedium: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),

      // Pantalla inicial
      home: const HomeScreen(),
    );
  }
}

// Pantalla principal de la aplicación
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Proporciona la estructura base de la página (AppBar, body y Drawer)
      appBar: AppBar(
        title: Text(
          "Relación de Ejercicios", // Título de la App Bar
        ),
      ),

      drawer: Drawer(
        // Menú lateral (hamburguesa) que se desliza desde el borde
        child:
            const MenuLateral(), // Usa el widget importado para construir el menú
      ),

      body: Center(
        // Centra el contenido principal
        child: Text('¡Abre el menú lateral para navegar!'),
      ),
    );
  }
}
