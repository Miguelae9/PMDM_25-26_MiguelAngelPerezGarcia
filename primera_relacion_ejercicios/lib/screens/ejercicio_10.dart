import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() {
    return _ContadorState();
  }
}

class _ContadorState extends State<Contador> {
  int _veces = 0;

  void _incrementar() {
    setState(() {
      _veces++;
    });
  }

  void _decrementar() {
    setState(() {
      _veces--;
    });
  }

  void _puestaACero() {
    setState(() {
      _veces = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio 10: Contador"),
      ),

      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 16, 1, 100),
        child: const MenuLateral(),
      ),

      backgroundColor: const Color.fromARGB(255, 198, 244, 255),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Has pulsado:', style: TextStyle(fontSize: 25)),
          ),
          const SizedBox(height: 40),
          Center(
            child: Text('$_veces veces', style: const TextStyle(fontSize: 35)),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: _puestaACero,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 129, 230, 255),
            ),
            child: const Icon(Icons.restore),
          ),
        ],
      ),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            //heroTag, sin esto peta el programa
            heroTag: 'botonSumar',
            onPressed: _incrementar,
            tooltip: "Incrementar",
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'botonRestar',
            onPressed: _decrementar,
            tooltip: "Decrementar",
            backgroundColor: const Color.fromARGB(255, 255, 84, 84),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
