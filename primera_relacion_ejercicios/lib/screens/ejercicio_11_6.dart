import 'package:flutter/material.dart';

// Fila de iconos (cuadrícula, vídeo, tienda, etiqueta)
class Ejercicio11Parte6 extends StatelessWidget {
  const Ejercicio11Parte6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Fila principal de iconos
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Icono seleccionado (cuadrícula) con línea negra debajo
            Column(
              children: [
                Image.asset("assets/imgs/cuadricula.png", width: 40, height: 40),
                const SizedBox(height: 4),
                Container(width: 40, height: 2, color: Colors.black), // subrayado
              ],
            ),

            // Iconos normales sin línea
            Column(
              children: [
                Image.asset("assets/imgs/tele.png", width: 40, height: 40),
                const SizedBox(height: 6),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/imgs/compra.png", width: 40, height: 40),
                const SizedBox(height: 6),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/imgs/etiqueta.png", width: 40, height: 40),
                const SizedBox(height: 6),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
