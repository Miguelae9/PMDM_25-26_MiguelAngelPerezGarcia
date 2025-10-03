import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Importa la librería para usar fuentes de Google Fonts

class InfomacionPersonal extends StatelessWidget {
  const InfomacionPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Estructura base de la página (AppBar y body)
      appBar: AppBar(
        // Barra superior
        title: Text(
          'Mi Información Personal',
          style:
              GoogleFonts.zenKurenaido(), // Aplica una fuente personalizada al título
        ),
        backgroundColor: const Color.fromARGB(255, 50, 159, 248),
      ),
      body: Center(
        // Centra el widget hijo
        child: Column(
          // Organiza los widgets hijos verticalmente
          mainAxisAlignment: MainAxisAlignment
              .center, // Centra los hijos en el eje principal (vertical)
          children: [
            // Lista de widgets: nombre y URL
            Text(
              'Migue Ángel Pérez García',
              style: GoogleFonts.aboreto(),
            ), // Muestra el nombre con otra fuente
            // Dirección del repositorio (con otro estilo)
            Text(
              // Muestra la URL
              'https://github.com/Miguelae9/PMDM_25-26_MiguelAngelPerezGarcia.git',
              textAlign: TextAlign.center,
              style: GoogleFonts.alata(), // Aplica una tercera fuente diferente
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 140, 198, 245),
    );
  }
}
