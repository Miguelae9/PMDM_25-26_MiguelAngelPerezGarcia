import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class JuegoImagenes extends StatefulWidget {
  const JuegoImagenes({super.key});

  @override
  State<JuegoImagenes> createState() => _JuegoImagenesState();
}

class _JuegoImagenesState extends State<JuegoImagenes> {
  int puntos = 0;

  // número de imágenes en pantalla
  final int numeroImagenes = 3;

  // posiciones X e Y de cada imagen
  late List<double> posicionesX;
  late List<double> posicionesY;

  Timer? _timerRonda;
  bool haSidoPulsada = false;
  final Random random = Random();

  @override
  void initState() {
    super.initState();

    // inicializamos las listas con valores iniciales
    posicionesX = _crearListaInicial(100);
    posicionesY = _crearListaInicial(200);

    iniciarNuevaRonda(); // empieza el juego
  }

  // función auxiliar que crea una lista con valores repetidos
  List<double> _crearListaInicial(double valorInicial) {
    List<double> lista = <double>[];
    for (int i = 0; i < numeroImagenes; i++) {
      lista.add(valorInicial);
    }
    return lista;
  }

  void iniciarNuevaRonda() {
    _timerRonda?.cancel();

    // cambia las posiciones de todas las imágenes
    setState(() {
      for (int i = 0; i < numeroImagenes; i++) {
        // rangos “a ojo” para que no salgan fuera de pantalla
        posicionesX[i] = 50 + random.nextDouble() * 250;
        posicionesY[i] = 150 + random.nextDouble() * 400;
      }
      haSidoPulsada = false;
    });

    // temporizador de cada ronda (700 ms)
    _timerRonda = Timer(const Duration(milliseconds: 700), () {
      if (!haSidoPulsada) {
        setState(() {
          puntos -= 2; // no se pulsó ninguna imagen a tiempo
        });
      }
      iniciarNuevaRonda(); // siguiente ronda
    });
  }

  void _onImagenPulsada() {
    // evita sumar varias veces en la misma ronda
    if (haSidoPulsada) {
      return;
    }

    haSidoPulsada = true;
    _timerRonda?.cancel();

    setState(() {
      puntos++;
    });

    iniciarNuevaRonda();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Juego imágenes",
          style: TextStyle(color: Color.fromARGB(255, 167, 255, 3)),
        ),
        foregroundColor: Color.fromARGB(255, 167, 255, 3),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 16, 1, 100),
        child: const MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      body: Stack(
        children: [
          // texto de puntos
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              "Puntos: $puntos",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 167, 255, 3),
              ),
            ),
          ),

          // dibuja todas las imágenes en sus posiciones aleatorias
          for (int i = 0; i < posicionesX.length; i++)
            Positioned(
              left: posicionesX[i],
              top: posicionesY[i],
              child: GestureDetector(
                onTap: _onImagenPulsada,
                child: Image.asset(
                  "assets/imgs/calavera_verde_icon.png",
                  width: 80,
                  height: 80,
                ),
              ),
            ),
        ],
      ),
    );
  }

  // cancela el temporizador al salir de la pantalla
  @override
  void dispose() {
    _timerRonda?.cancel();
    super.dispose();
  }
}
