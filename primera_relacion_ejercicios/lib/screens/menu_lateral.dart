import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: const Text(
            "Miguel Ángel Pérez García",
            style: TextStyle(color: Color.fromARGB(255, 255, 230, 2)),
          ),
          accountEmail: const Text(
            "Relación de Ejercicios Tema 1",
            style: TextStyle(color: Color.fromARGB(255, 255, 230, 2)),
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://images.stockcake.com/public/3/d/5/3d5bf737-41c7-4776-81cd-01411801add4_large/synthwave-sunset-city-stockcake.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // INICIO
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text("Inicio"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
        ),

        // EJ1
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text("Ejercicio 1"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej1');
            },
          ),
        ),

        // EJ2
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 2",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej2');
            },
          ),
        ),

        // EJ3
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 3",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej3');
            },
          ),
        ),

        // EJ4
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 4",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej4');
            },
          ),
        ),

        // EJ5
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text("Ejercicio 5"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej5');
            },
          ),
        ),

        // EJ6
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 6",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej6');
            },
          ),
        ),

        // EJ7
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 7",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej7');
            },
          ),
        ),

        // EJ8
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 8",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej8');
            },
          ),
        ),

        // EJ9
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 9",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej9');
            },
          ),
        ),

        // EJ10
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 10",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej10');
            },
          ),
        ),

        // EJ11
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 11",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej11');
            },
          ),
        ),

        // EJ12
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text(
              "Ejercicio 12",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej12');
            },
          ),
        ),

        // EJ13
        Ink(
          color: const Color.fromARGB(255, 247, 114, 180),
          child: ListTile(
            title: const Text("Ejercicio 13"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, '/ej13');
            },
          ),
        ),
      ],
    );
  }
}
