import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class AdividarNumero extends StatefulWidget {
  const AdividarNumero({super.key});

  @override
  State<AdividarNumero> createState() => _AdividarNumeroState();
}

class _AdividarNumeroState extends State<AdividarNumero> {
  TextEditingController _controlador = TextEditingController();

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
      backgroundColor: const Color.fromARGB(235, 148, 164, 243),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Adivina el Número",
              style: TextStyle(color: const Color.fromARGB(255, 164, 89, 250)),
            ),
            TextField(
              controller: _controlador,
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
}
