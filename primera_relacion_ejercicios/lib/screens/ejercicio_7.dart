import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class DisposicionImagenes extends StatelessWidget {
  const DisposicionImagenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cabecera
      appBar: AppBar(
        title: const Text(
          "Disposición Imágenes",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        backgroundColor: const Color.fromARGB(255, 127, 170, 93),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(255, 150, 196, 98),

      // Columna para que las imágenes se vayan insertando una debajo de otra
      body: Column(
        children: [
          // Utilizo Row dentro de Column para poner las imágenes en fila
          // Fila 1
          Row(children: [Image.asset("assets/imgs/python.png")]),

          // Fila 2
          Row(
            children: [
              Image.network(
                "https://img.icons8.com/?size=100&id=13679&format=png&color=000000",
                // Uso de width y heigt para controlar distancias entre imágenes
                width: 100,
                height: 500,
              ),
              Image.network(
                "https://img.icons8.com/?size=100&id=13679&format=png&color=000000",
                width: 170,
                height: 100,
              ),
            ],
          ),

          // Fila 3
          Row(
            // Separo las imagenes con una distancia idéntica
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/imgs/flutter.png"),
              Image.asset("assets/imgs/flutter.png"),
              Image.asset("assets/imgs/flutter.png"),
            ],
          ),
        ],
      ),
    );
  }
}
