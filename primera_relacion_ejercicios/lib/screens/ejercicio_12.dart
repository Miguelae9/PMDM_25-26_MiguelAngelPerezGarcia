import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

// Pantalla principal del reto de colores aleatorios
class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  State<RandomColors> createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  // Puntos del jugador
  int points = 0;

  // Nombre y color mostrados actualmente
  late String randomName;
  late Color randomColor;

  // Temporizador principal que cambia color y texto
  Timer? _timer;
  int _tickMs = 1000; // velocidad de cambio (milisegundos)
  String estadoJuego = ""; // "ganar" o "perder"

  // Variables para el contador de tiempo
  int segundosRestantes = 60;
  int rachaAciertos = 0; // para sumar tiempo extra al acertar tres seguidas
  Timer? _temporizadorCuentaAtras;

  // Listas de nombres y colores posibles
  var colorNames = ['azul', 'verde', 'naranja'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
  ];

  // Modo inverso: cuando está activo, hay que fallar para acertar
  bool modoInverso = false;

  @override
  void initState() {
    super.initState();
    getRandomColor(); // color inicial
    getRandomName(); // texto inicial
    timer(); // inicia cambios automáticos de color/nombre
    iniciarCuentaAtras(); // inicia el contador de tiempo
  }

  // Temporizador que cambia color y texto cada cierto tiempo
  void timer() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(milliseconds: _tickMs), (timer) {
      getRandomColor();
      getRandomName();
      setState(() {});
    });
  }

  // Temporizador de cuenta atrás de 60 segundos
  void iniciarCuentaAtras() {
    _temporizadorCuentaAtras?.cancel();
    _temporizadorCuentaAtras = Timer.periodic(const Duration(seconds: 1), (
      Timer temporizador,
    ) {
      // si el juego terminó, se cancela el temporizador
      if (estadoJuego == 'ganar' || estadoJuego == 'perder') {
        temporizador.cancel();
        return;
      }

      // cada segundo resta 1 al contador
      if (segundosRestantes > 0) {
        setState(() {
          segundosRestantes--;
        });
      }

      // si el tiempo llega a 0, se pierde
      if (segundosRestantes <= 0) {
        estadoJuego = 'perder';
        _timer?.cancel();
        temporizador.cancel();
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // texto de mensaje según el estado
    String mensaje = "";
    bool juegoTerminado = false;

    if (estadoJuego == 'ganar') {
      mensaje = "HAS GANADO";
      juegoTerminado = true;
    } else if (estadoJuego == 'perder') {
      mensaje = "HAS PERDIDO";
      juegoTerminado = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reto",
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 250, 205, 71),
      drawer: Drawer(
        // Menú lateral (hamburguesa)
        child: const MenuLateral(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Puntos actuales
          Text(
            'Puntos: $points',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),

          // Tiempo restante
          Text(
            'Tiempo: $segundosRestantes',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          // Indicador del modo inverso
          if (modoInverso)
            const Text(
              '¡Inverso!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.red,
              ),
            ),

          // Mensaje de victoria o derrota
          Text(
            mensaje,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.black,
            ),
          ),

          // Zona central del juego (color + texto)
          Center(
            child: GestureDetector(
              onTap: () {
                if (!juegoTerminado) {
                  onGiftTap(randomName, randomColor);
                }
              },
              child: Column(
                children: [
                  // Cuadro de color
                  Container(width: 120, color: randomColor, height: 120),
                  // Texto del color
                  Text(
                    randomName,
                    style: TextStyle(
                      color: randomColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Botón de reinicio si el juego terminó
                  if (juegoTerminado)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // Reinicia todos los valores del juego
                          points = 0;
                          _tickMs = 1000;
                          estadoJuego = '';

                          segundosRestantes = 60;
                          rachaAciertos = 0;
                          modoInverso = false;

                          iniciarCuentaAtras();
                          getRandomColor();
                          getRandomName();
                          timer();
                        });
                      },
                      child: const Text('Volver a jugar'),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Selecciona un color aleatorio de la lista
  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomColor = colorHex[randomNumber];
  }

  // Selecciona un nombre de color aleatorio de la lista
  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomName = colorNames[randomNumber];
  }

  // Convierte un color en su nombre equivalente
  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else {
      return 'naranja';
    }
  }

  // Lógica principal al pulsar el color
  void onGiftTap(String name, Color color) {
    // Compara el texto con el color mostrado
    var colorToString = hexToStringConverter(color);

    bool coincide = (name == colorToString);
    bool esAcierto;

    // Si está en modo inverso, el acierto es al fallar
    if (modoInverso) {
      esAcierto = !coincide;
    } else {
      esAcierto = coincide;
    }

    // Si acierta
    if (esAcierto) {
      points++;
      rachaAciertos++;

      // Si acierta tres seguidas, gana 15 segundos extra
      if (rachaAciertos == 3) {
        segundosRestantes += 15;
        rachaAciertos = 0;
      }

      // Ajusta velocidad según puntos
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

      // Si la velocidad cambia, reinicia el timer
      if (nuevaVelocidad != _tickMs) {
        _tickMs = nuevaVelocidad;
        timer();
      }
    } else {
      // Si falla
      rachaAciertos = 0;

      if (points > 0) {
        points--;
      } else {
        // Si ya estaba en 0 puntos, pierde
        estadoJuego = 'perder';
        _timer?.cancel();
        _temporizadorCuentaAtras?.cancel();
      }
    }

    // Gana al llegar a 10 puntos
    if (points >= 10) {
      estadoJuego = 'ganar';
      _timer?.cancel();
      _temporizadorCuentaAtras?.cancel();
    }

    // De vez en cuando activa o desactiva modo inverso (probabilidad 1/8)
    if (estadoJuego == '') {
      Random random = Random();
      int numero = random.nextInt(8);
      if (numero == 0) {
        modoInverso = !modoInverso;
      }
    }

    setState(() {}); // actualiza la interfaz
  }

  // Cancela los temporizadores al cerrar la pantalla
  @override
  void dispose() {
    _timer?.cancel();
    _temporizadorCuentaAtras?.cancel();
    super.dispose();
  }
}
