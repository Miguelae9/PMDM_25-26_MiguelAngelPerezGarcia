import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class TextoDesbordado extends StatelessWidget {
  const TextoDesbordado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cabecera
      appBar: AppBar(
        title: const Text(
          "Texto Desbordado",
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(255, 235, 140, 86),

      // ListView con padding general y separación por Padding entre bloques
      body: ListView(
        // Padding para separar los textos visto en los apuntes
        padding: const EdgeInsets.all(20),
        children: [
          // TEXTO 1 — overflow: ellipsis
          Text(
            "En un lugar de la Mancha, de cuyo nombre no quiero acordarme, "
            "no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, "
            "adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, "
            "salpicón las más noches, duelos y quebrantos los sábados, lentejas los viernes, "
            "algún palomino de añadidura los domingos, consumían las tres partes de su hacienda.",
            style: GoogleFonts.abrilFatface(),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),

          const Padding(padding: EdgeInsets.only(top: 20)),

          // TEXTO 2 — overflow: fade
          Text(
            "El resto della concluían sayo de velarte, calzas de velludo para las fiestas, "
            "con sus pantuflos de lo mesmo, y los días de entre semana se honraba con su vellori de lo más fino. "
            "Tenía en su casa una ama que pasaba de los cuarenta, y una sobrina que no llegaba a los veinte, "
            "y un mozo de campo y plaza, que así ensillaba el rocín como tomaba la podadera. "
            "Frisaba la edad de nuestro hidalgo con los cincuenta años; era de complexión recia, "
            "seco de carnes, enjuto de rostro, gran madrugador y amigo de la caza.",
            style: GoogleFonts.albertSans(),
            maxLines: 4,
            overflow: TextOverflow.fade, // ← variante 2
          ),

          const Padding(padding: EdgeInsets.only(top: 20)),

          // TEXTO 3 — ReadMore (mejora presentación con "Leer más / Leer menos"),
          // Tanto ReadMoreText como los trim vienen del paquete para mejorar la presentación.
          // El paquete se llama readmore. 
          // Todo lo que uso relacionado a este paquete lo he tenido que buscar en internet
          ReadMoreText(
            "Quieren decir que tenía el sobrenombre de Quijada, o Quesada, "
            "que en esto hay alguna diferencia en los autores que deste caso escriben; "
            "aunque por conjeturas verosímiles se deja entender que se llamaba Quejana. "
            "Pero esto importa poco a nuestro cuento; "
            "basta que en la narración dél no se salga un punto de la verdad.",
            style: GoogleFonts.almendra(),
            trimLines: 4,
            trimMode: TrimMode.Line,
            trimCollapsedText: '  Leer más',
            trimExpandedText: '  Leer menos',
            moreStyle: const TextStyle(color: Colors.blue),
            lessStyle: const TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
