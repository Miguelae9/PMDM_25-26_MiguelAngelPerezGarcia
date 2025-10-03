import 'package:flutter/material.dart';

class CincoImagenesColumna extends StatelessWidget {
  const CincoImagenesColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra superior
        title: Text(
          // Título con estilo de texto
          "Cinco Fotos en Columa",
          style: TextStyle(color: const Color.fromARGB(255, 202, 165, 52)),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        // Permite hacer scroll si el contenido excede la pantalla (buscado en internet)
        child: Center(
          // Centra el contenido
          // Column para dispones las fotos en columna
          child: Column(
            // Organiza los widgets hijos verticalmente
            children: [
              // Lista de las cinco imágenes
              Image.asset(
                "assets/imgs/portada_elden_ring.png",
              ), // Carga imagen desde la carpeta 'assets'
              Image.asset("assets/imgs/godfrey_elden_ring.jpg"),
              Image.asset("assets/imgs/ranni_elden_ring.jpeg"),
              Image.asset("assets/imgs/midra_elden_ring.png"),
              Image.asset("assets/imgs/radahn_miquella_elden_ring.png"),
            ],
          ),
        ),
      ),
    );
  }
}
