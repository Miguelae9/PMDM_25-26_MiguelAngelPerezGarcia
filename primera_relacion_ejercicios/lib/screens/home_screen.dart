import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';
import 'package:relacion_ejercicios_tema1/screens/screens.dart';
import 'package:relacion_ejercicios_tema1/screens/splash_screen.dart';
// Import único de todas las pantallas

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Clase raíz de la aplicación

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta "Debug"
      title: 'Relación de Ejercicios',

      // Tema general de la app
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
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),

      initialRoute: '/splash', // Pantalla inicial con rutas nombradas

      // Rutas disponibles en la app
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/ej1': (context) => const InfomacionPersonal(),
        '/ej2': (context) => const FotoNombre(),
        '/ej3': (context) => const TresFotosColumnas(),
        '/ej4': (context) => const CincoIconosFila(),
        '/ej5': (context) => const CincoImagenesColumna(),
        '/ej6': (context) => const TextoDesbordado(),
        '/ej7': (context) => const DisposicionImagenes(),
        '/ej8': (context) => const FilasColumnasAnidadas(),
        '/ej9': (context) => const Reto(),
        '/ej10': (context) => const Contador(),
        '/ej11': (context) => const Instagram(),
        '/ej12': (context) => const RandomColors(),
        '/ej13': (context) => const JuegoImagenes(),
      },
    );
  }
}

// Pantalla principal de la aplicación
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Estructura principal con AppBar y Drawer
      appBar: AppBar(
        title: const Text("Relación de Ejercicios"),
      ),

      drawer: const Drawer(
        child: MenuLateral(), // Menú lateral reutilizable
      ),

      // Contenido principal
      body: const Center(
        child: Text('¡Abre el menú lateral para navegar!'),
      ),
    );
  }
}
