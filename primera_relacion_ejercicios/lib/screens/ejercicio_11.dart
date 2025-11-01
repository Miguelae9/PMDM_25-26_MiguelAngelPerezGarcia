import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

// Importamos las partes del ejercicio
import 'ejercicio_11_1.dart';
import 'ejercicio_11_2.dart';
import 'ejercicio_11_3.dart';
import 'ejercicio_11_4.dart';
import 'ejercicio_11_5.dart';
import 'ejercicio_11_6.dart';
import 'ejercicio_11_7.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior
      appBar: const Ejercicio11AppBar(),

      // Menú lateral (Drawer)
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),

      // Color de fondo principal
      backgroundColor: const Color.fromARGB(255, 255, 247, 247),

      // Cuerpo con scroll
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // Cada una de las partes del perfil divididas
            Ejercicio11Parte2(), // Imagen de perfil + estadísticas
            SizedBox(height: 10),
            Ejercicio11Parte3(), // Biografía / descripción
            SizedBox(height: 10),
            Ejercicio11Parte4(), // Botones de acción
            SizedBox(height: 10),
            Ejercicio11Parte5(), // Historias destacadas
            SizedBox(height: 10),

            // Línea gris divisoria
            Divider(color: Color(0xFFDBDBDB), thickness: 0.5, height: 0),

            SizedBox(height: 16),
            Ejercicio11Parte6(), // Iconos de pestañas
            SizedBox(height: 20),
            Ejercicio11Parte7(), // Grid de fotos
          ],
        ),
      ),
    );
  }
}
