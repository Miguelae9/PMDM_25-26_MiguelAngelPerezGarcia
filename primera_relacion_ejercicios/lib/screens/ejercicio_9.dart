import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class Reto extends StatelessWidget {
  const Reto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior con título y color de fondo
      appBar: AppBar(
        title: const Text("Reto"),
        backgroundColor: const Color.fromARGB(255, 177, 46, 46),
      ),

      // Menú lateral (drawer)
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 16, 1, 100),
        child: const MenuLateral(), // Contenido del menú lateral
      ),

      // Color de fondo principal de la pantalla
      backgroundColor: const Color.fromARGB(255, 233, 64, 64),

      // Contenido centrado en la pantalla
      body: Center(
        // Contenedor con forma circular y borde azul
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle, // Forma circular
            border: Border.all(
              // Borde alrededor del círculo
              color: const Color.fromRGBO(0, 110, 255, 1),
              width: 8, // Grosor del borde
            ),
          ),
          width: 220, // Ancho del contenedor
          height: 240, // Alto del contenedor
          // Texto grande dentro del círculo
          child: const Text(
            'H', // Letra mostrada
            style: TextStyle(
              fontSize: 150, // Tamaño de la letra
              color: Color.fromRGBO(0, 110, 255, 1), // Color del texto
            ),
            textAlign: TextAlign.center, // Centra la letra horizontalmente
          ),
        ),
      ),
    );
  }
}
