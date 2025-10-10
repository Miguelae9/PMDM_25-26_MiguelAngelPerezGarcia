import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart'; 

class FotoNombre extends StatelessWidget {
  const FotoNombre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra superior
        title: Text("Foto y Nombre"), // Título de la App Bar
        backgroundColor: const Color.fromARGB(255, 167, 247, 241),
      ),
      drawer: const Drawer(
        backgroundColor:  Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      body: Center(
        // Centra el widget hijo
        child: Column(
          // Organiza los widgets hijos verticalmente
          mainAxisAlignment: MainAxisAlignment.center,
          // Centra los hijos en el eje principal (vertical)
          children: [
            // Lista de widgets: imagen seguida de texto
            Image.asset(
              "assets/imgs/caminante_sobre_mar_nubes.jpg",
            ), // Muestra una imagen desde la carpeta 'assets'
            Text(
              "Miguel Ángel Pérez García",
            ), // Muestra el texto debajo de la imagen
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 230, 253, 251),
    );
  }
}
