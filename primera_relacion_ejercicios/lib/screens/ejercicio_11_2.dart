import 'package:flutter/material.dart';

class Ejercicio11Parte2 extends StatelessWidget {
  const Ejercicio11Parte2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Foto de perfil con borde degradado
        Container(
          width: 138,
          height: 138,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            // gradient buscado en internet. Pinta un degradado de colores alrededor (de naranja a azul)
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFFF58529), // naranja
                Color(0xFFDD2A7B), // rosa
                Color(0xFF8134AF), // morado
                Color(0xFF515BD4), // azul
              ],
            ),
          ),
          child: ClipOval(child: Image.asset("assets/imgs/kante_perfil.jpg")),
        ),

        // Número de publicaciones
        Column(
          children: const [
            Text(
              "9",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 2),
            Text("Posts", style: TextStyle(fontSize: 13, color: Colors.grey)),
          ],
        ),

        // Seguidores
        Column(
          children: const [
            Text(
              "500 M",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 2),
            Text(
              "Followers",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),

        // Siguiendo
        Column(
          children: const [
            Text(
              "2",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 2),
            Text(
              "Following",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
