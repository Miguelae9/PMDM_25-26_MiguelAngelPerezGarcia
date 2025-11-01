import 'package:flutter/material.dart';

// Fila con los botones "Following", "Message", "Email" y una flecha
class Ejercicio11Parte4 extends StatelessWidget {
  const Ejercicio11Parte4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          // Botón "Following" con su flecha
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize:
                    MainAxisSize.min, // evita que el Row se expanda demasiado
                children: const [
                  Flexible(
                    // permite que el texto se ajuste sin desbordarse
                    child: Text(
                      "Following",
                      overflow: TextOverflow.ellipsis, // corta si no cabe
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.keyboard_arrow_down, size: 20),
                ],
              ),
            ),
          ),

          const SizedBox(width: 6),

          // Botón "Message"
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Message",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),

          const SizedBox(width: 6),

          // Botón "Email"
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),

          const SizedBox(width: 6),

          // Botón con solo la flecha
          Container(
            width: 36,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.center,
            child: const Icon(Icons.keyboard_arrow_down, size: 30),
          ),
        ],
      ),
    );
  }
}
