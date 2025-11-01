import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Sección de biografía y texto del perfil
class Ejercicio11Parte3 extends StatelessWidget {
  const Ejercicio11Parte3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 16), // margen izquierdo
        Expanded(
          // RichText permite combinar varios estilos (negrita, gris, etc.)
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 14,
                height: 1.4,
              ),
              children: const [
                TextSpan(
                  text: "G.O.A.T 🐐\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "World Champion 🏆\n"),
                TextSpan(
                  text: "KB9 à la maison 9️⃣\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "Lucky numbers  1️⃣3️⃣  7️⃣\n"),
                TextSpan(text: "L'habit ne fait pas le moine 🧘🏽‍♀️\n"),
                TextSpan(
                  text: "Followed by ",
                  style: TextStyle(color: Colors.grey),
                ),
                TextSpan(
                  text: "Cristiano Ronaldo,\n",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "Messi",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: " and 67 others",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
