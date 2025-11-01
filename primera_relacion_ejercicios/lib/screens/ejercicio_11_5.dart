import 'package:flutter/material.dart';

// Carrusel horizontal con las historias destacadas
class Ejercicio11Parte5 extends StatelessWidget {
  const Ejercicio11Parte5({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // alto total (círculo + texto)
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16, right: 8),
        child: Row(
          children: [
            // --- Historia 1 ---
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/imgs/kante_historia_1.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                const Text("TRAINING", style: TextStyle(fontSize: 12)),
              ],
            ),

            const SizedBox(width: 12),

            // --- Historia 2 ---
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/imgs/kante_historia_2.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                const Text("CHILL", style: TextStyle(fontSize: 12)),
              ],
            ),

            const SizedBox(width: 12),

            // --- Historia 3 ---
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/imgs/kante_historia_3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                const Text("FOCUS", style: TextStyle(fontSize: 12)),
              ],
            ),

            const SizedBox(width: 12),

            // --- Historia 4 ---
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/imgs/kante_historia_4.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                const Text("CHAMPION", style: TextStyle(fontSize: 12)),
              ],
            ),

            const SizedBox(width: 12),

            // --- Historia 5 ---
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/imgs/kante_historia_5.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                const Text("MVP", style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
