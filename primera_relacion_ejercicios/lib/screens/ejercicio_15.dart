import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  // controla el estado del switch (pizzas = false / hamburguesas = true)
  bool _isSwitched = false;

  // checkboxes para gustos de pizzas
  bool _conPina = false;
  bool _margarita = false;
  bool _cuatroQuesos = false;
  bool _carbonara = false;

  // checkboxes para gustos de hamburguesas
  bool _classic = false;
  bool _baconMelt = false;
  bool _spicyInferno = false;
  bool _truffleDeluxe = false;

  // mensaje que se mostrará al pulsar el botón
  String _mensaje = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),

      // menú lateral de navegación
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),

      backgroundColor: const Color.fromARGB(255, 224, 253, 142),

      // contenido centrado verticalmente
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("¿Pizzas o hamburguesas?"),

            // interruptor que cambia el tipo de formulario
            Switch(
              value: _isSwitched,
              onChanged: (nuevoValor) {
                setState(() {
                  _isSwitched = nuevoValor;
                });
              },
            ),

            // si el switch está desactivado, muestra opciones de pizzas
            if (_isSwitched == false) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Te gusta la pizza con piña?"),
                  Checkbox(
                    value: _conPina,
                    onChanged: (nuevoValor) {
                      setState(() {
                        if (nuevoValor != null) _conPina = nuevoValor;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Te gusta la pizza margarita?"),
                  Checkbox(
                    value: _margarita,
                    onChanged: (nuevoValor) {
                      setState(() {
                        if (nuevoValor != null) _margarita = nuevoValor;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Te gusta la pizza 4 quesos?"),
                  Checkbox(
                    value: _cuatroQuesos,
                    onChanged: (nuevoValor) {
                      setState(() {
                        if (nuevoValor != null) _cuatroQuesos = nuevoValor;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Te gusta la pizza carbonara?"),
                  Checkbox(
                    value: _carbonara,
                    onChanged: (nuevoValor) {
                      setState(() {
                        if (nuevoValor != null) _carbonara = nuevoValor;
                      });
                    },
                  )
                ],
              ),
            ]

            // si el switch está activado, muestra opciones de hamburguesas
            else ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Te gusta la smash classic?"),
                  Checkbox(
                    value: _classic,
                    onChanged: (nuevoValor) {
                      setState(() {
                        if (nuevoValor != null) _classic = nuevoValor;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Te gusta la smash bacon melt?"),
                  Checkbox(
                    value: _baconMelt,
                    onChanged: (nuevoValor) {
                      setState(() {
                        if (nuevoValor != null) _baconMelt = nuevoValor;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Te gusta la smash spicy inferno?"),
                  Checkbox(
                    value: _spicyInferno,
                    onChanged: (nuevoValor) {
                      setState(() {
                        if (nuevoValor != null) _spicyInferno = nuevoValor;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Te gusta la smash truffle deluxe?"),
                  Checkbox(
                    value: _truffleDeluxe,
                    onChanged: (nuevoValor) {
                      setState(() {
                        if (nuevoValor != null) _truffleDeluxe = nuevoValor;
                      });
                    },
                  )
                ],
              ),
            ],

            // botón que muestra un mensaje según la elección principal
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_isSwitched == false) {
                    _mensaje = "A mi también me encanta la pizza";
                  } else {
                    _mensaje =
                        "Me gustan las hamburguesas,\npero prefiero las pizzas";
                  }
                });
              },
              child: Text("Ingresar datos"),
            ),

            // mensaje final en pantalla
            Text(_mensaje),
          ],
        ),
      ),
    );
  }
}
