import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class FilasColumnasAnidadas extends StatelessWidget {
  const FilasColumnasAnidadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior de la aplicación
      appBar: AppBar(
        title: const Text("Filas y Columnas Anidadas"),
        backgroundColor: const Color.fromARGB(255, 192, 181, 24),
      ),

      // Menú lateral (Drawer)
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 16, 1, 100),
        child: const MenuLateral(), // Contenido del menú lateral
      ),

      // Color de fondo del cuerpo principal
      backgroundColor: const Color.fromARGB(255, 224, 214, 67),

      // Contenido centrado en la pantalla
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los elementos verticalmente
          children: [
            // Imagen y texto de WhatsApp
            Image.asset("assets/imgs/whatsapp.png"),
            const Text("Whatsapp"),

            const SizedBox(height: 200), // Espacio vertical
            // Primera fila: Facebook e Instagram
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/imgs/facebook.png"),
                    const Text("Facebook"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/imgs/instagram.png"),
                    const Text("Instagram"),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 200), // Espacio vertical
            // Segunda fila: Reddit, Twitter y YouTube
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset("assets/imgs/reddit.png"),
                    const Text("Reddit"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/imgs/twitter.png"),
                    const Text("Twitter"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/imgs/youtube.png"),
                    const Text("YouTube"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
