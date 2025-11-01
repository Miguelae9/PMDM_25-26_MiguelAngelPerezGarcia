import 'package:flutter/material.dart';

// AppBar sencilla con el nombre, el check azul y el menú de tres puntos
class Ejercicio11AppBar extends StatelessWidget implements PreferredSizeWidget {
  const Ejercicio11AppBar({super.key});

  // Buscado en internet. Sirve para decirle a flutter que el widget va a comportarse como un AppBar normal
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 247, 247),
      title: Row(
        children: [
          // Nombre del usuario
          const Text("N'Golo Kanté "),
          // Icono de verificado
          Image.asset("assets/imgs/verificado.png", width: 20, height: 20),
          // Buscado en internet. Sirve para empujar a los elementos a los extremos
          const Spacer(),
          // Menú de tres puntos
          const Text("⋯"),
        ],
      ),
    );
  }
}
