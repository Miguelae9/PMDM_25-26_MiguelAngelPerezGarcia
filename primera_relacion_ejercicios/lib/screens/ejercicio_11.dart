import 'package:google_fonts/google_fonts.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';
import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

 // Lista de fotos del grid
  static const List<String> _fotos = [
    "assets/imgs/grid_1.jpg",
    "assets/imgs/grid_2.jpg",
    "assets/imgs/grid_3.jpg",
    "assets/imgs/grid_4.jpg",
    "assets/imgs/grid_5.jpg",
    "assets/imgs/grid_6.jpg",
    // añade las que quieras…
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior con título y color de fondo
      appBar: AppBar(
        title: Row(
          children: [
            Text("N'Golo Kanté "),
            Image.asset("assets/imgs/verificado.png", width: 20, height: 20),
            Spacer(),
            Text("⋯"),
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
                  "assets/imgs/kante_perfil.jpeg",
                  width: 130,
                  height: 130,
                ),
              ),

              Column(
                children: [
                  Text("500", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Posts"),
                ],
              ),

              Column(
                children: [
                  Text(
                    "1000000 M",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Followers"),
                ],
              ),

              Column(
                children: [
                  Text("2", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Following"),
                ],
              ),
            ],
          ),

          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 16),
              Text(
                "D la trinida par mundo😈\nlas reguetona yamarme🔥\ner k kiera argo🙏\nk me buske🔫\ngemelos xivatos🤫",
                style: GoogleFonts.rocknRollOne(),
              ),
            ],
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("Following"),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("Message"),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("Email"),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset("assets/imgs/flecha_abajo.png"),
              ),
            ],
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/imgs/kante_historia_1.jpeg",
                  width: 70,
                  height: 70,
                ),
              ),

              ClipOval(
                child: Image.asset(
                  "assets/imgs/kante_historia_2.jpeg",
                  width: 70,
                  height: 70,
                ),
              ),

              ClipOval(
                child: Image.asset(
                  "assets/imgs/kante_historia_3.jpg",
                  width: 70,
                  height: 70,
                ),
              ),

              ClipOval(
                child: Image.asset(
                  "assets/imgs/kante_historia_4.jpg",
                  width: 70,
                  height: 70,
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/imgs/cuadricula.png", width: 40, height: 40),

              Image.asset("assets/imgs/tele.png", width: 40, height: 40),

              Image.asset("assets/imgs/compra.png", width: 40, height: 40),

              Image.asset("assets/imgs/etiqueta.png", width: 40, height: 40),
            ],
          ),

           // ---------- A PARTIR DE AQUÍ, EL GRID DE FOTOS ----------
          // Expanded hace que el grid ocupe el resto de la pantalla y permita scroll.
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,           // 3 columnas típico de Instagram
                mainAxisSpacing: 1,          // separación vertical
                crossAxisSpacing: 1,         // separación horizontal
                childAspectRatio: 1.0,       // cuadrado
              ),
              itemCount: _fotos.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  _fotos[index],
                  fit: BoxFit.cover,          // que llene el cuadrado
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
