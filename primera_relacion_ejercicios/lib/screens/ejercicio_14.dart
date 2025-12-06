import 'dart:math'; // para generar números aleatorios

import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class AdividarNumero extends StatefulWidget {
  const AdividarNumero({super.key});

  @override
  State<AdividarNumero> createState() => _AdividarNumeroState();
}

class _AdividarNumeroState extends State<AdividarNumero> {
  // controlador para leer lo que escribe el usuario en el TextField
  TextEditingController _controlador = TextEditingController();

  // variable para mostrar mensajes por pantalla
  var _mensaje = "";

  // número aleatorio que el usuario debe adivinar
  var _numRandom = 0;

  // genera un número aleatorio entre 1 y 100
  int generarNumeroRandom() {
    final random = Random();
    return random.nextInt(100) + 1;
  }

  // comprueba si el número introducido es mayor, menor o igual al generado
  String comprobarNumero(var num) {
    if (_numRandom > num) {
      return "El número es mayor"; // el usuario debe poner un número más grande
    } else if (_numRandom < num) {
      return "El número es menor"; // el usuario debe poner un número más pequeño
    }
    return "¡¡¡Has acertado!!!"; // número correcto
  }

  @override
  void initState() {
    super.initState();
    // cuando inicia la pantalla se genera el número a adivinar
    _numRandom = generarNumeroRandom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adivina el Número"),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(235, 248, 198, 142),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // título del juego
          Text("Adivina el número entre 1 y 100"),

          // campo donde el usuario escribe su número
          TextField(
            decoration: InputDecoration(
              labelText: "Ejemplo: 59",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number, // teclado numérico
            controller: _controlador,
          ),

          ElevatedButton(
            onPressed: () {
              // guardamos lo que ha escrito el usuario
              var texto = _controlador.text;

              // intentamos convertir ese texto a número
              var numero = int.tryParse(texto);

              var resultado = "";

              // si no ha escrito nada
              if (texto.isEmpty) {
                setState(() {
                  _mensaje = "Introduce un número primero";
                });

                // si lo escrito no es un número
              } else if (numero == null) {
                setState(() {
                  _mensaje = "Eso no es un número válido";
                });

                // si es un número válido, lo comprobamos
              } else {
                setState(() {
                  resultado = comprobarNumero(numero);
                  _mensaje = resultado;
                });
              }
            },
            child: Text("Prueba"),
          ),

          // muestra el mensaje generado
          Text(_mensaje)
        ],
      ),
    );
  }
}
