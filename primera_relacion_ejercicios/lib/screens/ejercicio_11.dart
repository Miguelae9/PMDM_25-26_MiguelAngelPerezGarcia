import 'package:google_fonts/google_fonts.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';
import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior con título y color de fondo
      appBar: AppBar(
        title: Row(
          children: [
            Text("ChurumbeOfisia "),
            Image.asset("assets/imgs/verificado.png", width: 20, height: 20),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 247, 247),
      ),

      // Menú lateral (drawer)
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 16, 1, 100),
        child: const MenuLateral(), // Contenido del menú lateral
      ),

      // Color de fondo principal de la pantalla
      backgroundColor: const Color.fromARGB(255, 255, 247, 247),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/imgs/churumbel_perfil.jpg",
                  width: 150,
                  height: 150,
                ),
              ),
              Column(children: [Text("500"), Text("Posts")]),
              Column(children: [Text("10000 M"), Text("Followers")]),
              Column(children: [Text("2"), Text("Following")]),
            ],
          ),

          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 16,),
              Text(
                "D la trinida par mundo😈\nlas reguetona yamarme🔥\ner k kiera argo🙏\nk me buske🔫\ngemelos xivatos🤫",
                style: GoogleFonts.rocknRollOne(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
