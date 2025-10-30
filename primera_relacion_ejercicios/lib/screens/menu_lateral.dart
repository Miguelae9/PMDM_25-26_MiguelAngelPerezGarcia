import 'package:flutter/material.dart';

import 'package:relacion_ejercicios_tema1/screens/ejercicio_4.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_5.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_2.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_3.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_1.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_6.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_7.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_8.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_9.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_11.dart';
import 'package:relacion_ejercicios_tema1/screens/home_screen.dart';

// La clase representa el contenido del menú lateral (Drawer)
class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    // ListView permite que el menú se pueda desplazar si hay muchos elementos
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          // Encabezado del menú con información de usuario
          accountName: Text(
            "Miguel Ángel Pérez García",
            style: TextStyle(color: Color.fromARGB(255, 255, 230, 2)),
          ),
          accountEmail: Text(
            "Relación de Ejercicios Tema 1",
            style: TextStyle(color: Color.fromARGB(255, 255, 230, 2)),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              // Imagen de fondo cargada desde una URL
              image: NetworkImage(
                "https://images.stockcake.com/public/3/d/5/3d5bf737-41c7-4776-81cd-01411801add4_large/synthwave-sunset-city-stockcake.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Ink(
          // Widget para aplicar color de fondo y efectos táctiles
          color: const Color.fromARGB(255, 223, 62, 245),
          child: ListTile(
            title: const Text("Inicio"),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú lateral
              Navigator.of(context).push(
                // Navega a la nueva pantalla
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyApp(),
                ),
              );
            },
          ),
        ),

        Ink(
          // Widget para aplicar color de fondo y efectos táctiles
          color: const Color.fromARGB(255, 139, 191, 240),
          child: ListTile(
            title: const Text("Ejercicio 1"),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú lateral
              Navigator.of(context).push(
                // Navega a la nueva pantalla
                MaterialPageRoute(
                  builder: (BuildContext context) => const InfomacionPersonal(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 139, 240, 210),
          child: ListTile(
            title: const Text(
              "Ejercicio 2",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const FotoNombre(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 243, 187, 82),
          child: ListTile(
            title: const Text(
              "Ejercicio 3",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const TresFotosColumnas(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 243, 82, 157),
          child: ListTile(
            title: const Text(
              "Ejercicio 4",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const CincoIconosFila(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 0, 0, 0),
          child: ListTile(
            title: const Text(
              "Ejercicio 5",
              style: TextStyle(color: Color.fromARGB(255, 204, 169, 55)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const CincoImagenesColumna(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 230, 145, 96),
          child: ListTile(
            title: const Text(
              "Ejercicio 6",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const TextoDesbordado(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 7",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const DisposicionImagenes(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 192, 181, 24),
          child: ListTile(
            title: const Text(
              "Ejercicio 8",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const FilasColumnasAnidadas(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 177, 46, 46),
          child: ListTile(
            title: const Text(
              "Ejercicio 9",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Reto(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 177, 46, 46),
          child: ListTile(
            title: const Text(
              "Ejercicio 11",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Instagram(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
