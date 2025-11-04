import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

void main() {
  runApp(const RandomColors());
}

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  State<RandomColors> createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  // Interrogación para crearlo null
  Timer? _timer;
  int _tickMs = 1000; // empieza en 1000 milisegundos
  var colorNames = ['azul', 'verde', 'naranja'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
  ];

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    timer();
  }

  void timer() {
    _timer?.cancel(); // evita timers duplicados
    _timer = Timer.periodic(Duration(milliseconds: _tickMs), (timer) {
      getRandomColor();
      getRandomName();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Barra superior con título y color de fondo
        appBar: AppBar(
          title: const Text("Reto"),
          backgroundColor: const Color.fromARGB(255, 184, 184, 184),
        ),

        // Menú lateral (drawer)
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 16, 1, 100),
          child: const MenuLateral(), // Contenido del menú lateral
        ),

        // Color de fondo principal de la pantalla
        backgroundColor: const Color.fromARGB(255, 219, 219, 219),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Puntos: $points',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  onGiftTap(randomName, randomColor);
                },
                child: Column(
                  children: [
                    Container(width: 120, color: randomColor, height: 120),
                    Text(
                      randomName,
                      style: TextStyle(
                        color: randomColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else {
      return 'naranja';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;

      // calcula el nuevo tick según puntos (solo si aciertas)
      int nuevaVelocidad;
      if (points >= 10) {
        nuevaVelocidad = 400;
      } else if (points >= 9) {
        nuevaVelocidad = 600;
      } else if (points >= 6) {
        nuevaVelocidad = 1000;
      } else if (points >= 3) {
        nuevaVelocidad = 1500;
      } else {
        nuevaVelocidad = 2000;
      }

      if (nuevaVelocidad != _tickMs) {
        // solo reprograma si cambia
        _tickMs = nuevaVelocidad;
        timer();
      }
    } else {
      points--;
    }

    setState(() {});
  }

  // Para no dejar un timer vivo al salir de la pantalla
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
