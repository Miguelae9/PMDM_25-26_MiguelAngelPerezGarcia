import 'package:flutter/material.dart';

class TresFotosColumnas extends StatelessWidget {
  const TresFotosColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Estructura base de la página (AppBar y body)
      appBar: AppBar(
        // Barra superior
        title: Text("Tres Imágenes en Miniatura en Columa"), // Título
        backgroundColor: const Color.fromARGB(255, 241, 175, 75),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 195, 121),
      body: Center(
        // Centra el widget hijo
        child: Column(
          // Organiza los widgets hijos verticalmente
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los hijos en el eje vertical
          children: [
            // Lista de las tres imágenes
            Image.asset(
              "assets/imgs/frisk_undertale.png",
            ), // Muestra imagen desde 'assets'
            Image.asset("assets/imgs/sans_undertale.png"),
            Image.asset("assets/imgs/papyrus_undertale.png"),
          ],
        ),
      ),
    );
  }
}
