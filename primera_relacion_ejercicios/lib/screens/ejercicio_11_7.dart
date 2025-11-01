import 'package:flutter/material.dart';

// Muestra las fotos del perfil en forma de cuadrícula
class Ejercicio11Parte7 extends StatelessWidget {
  const Ejercicio11Parte7({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 3 columnas
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      // Buscado en internet. permite que el grid se adapte
      shrinkWrap: true,
      //Buscado en internet. Hace que el Gridview no se mueva poque el scroll ya lo maneja SingleChildScrollView
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        Image(image: AssetImage("assets/imgs/kante_1.jpg"), fit: BoxFit.cover),
        Image(image: AssetImage("assets/imgs/kante_2.jpg"), fit: BoxFit.cover),
        Image(image: AssetImage("assets/imgs/kante_3.jpg"), fit: BoxFit.cover),
        Image(image: AssetImage("assets/imgs/kante_4.jpg"), fit: BoxFit.cover),
        Image(image: AssetImage("assets/imgs/kante_5.jpg"), fit: BoxFit.cover),
        Image(image: AssetImage("assets/imgs/kante_6.webp"), fit: BoxFit.cover),
        Image(image: AssetImage("assets/imgs/kante_7.jpg"), fit: BoxFit.cover),
        Image(image: AssetImage("assets/imgs/kante_8.jpg"), fit: BoxFit.cover),
        Image(image: AssetImage("assets/imgs/kante_9.jpg"), fit: BoxFit.cover),
      ],
    );
  }
}
