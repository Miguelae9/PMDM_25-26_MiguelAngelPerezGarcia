import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Ejercicio11Parte3 extends StatelessWidget {
  const Ejercicio11Parte3({super.key});

  @override
  Widget build(BuildContext context) {
    final baseStyle = GoogleFonts.inter(
      color: Colors.black,
      fontSize: 15,
      height: 1.4,
    );

    final greyStyle = baseStyle.copyWith(color: Colors.grey);
    final boldBlackStyle = baseStyle.copyWith(fontWeight: FontWeight.bold);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 16), // margen izquierdo
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "G.O.A.T 🐐",
                style: baseStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              Text("World Champion 🏆", style: baseStyle),
              Text(
                "KB9 à la maison 9️⃣",
                style: baseStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              Text("Lucky numbers  1️⃣3️⃣  7️⃣", style: baseStyle),
              Text("L'habit ne fait pas le moine 🧘🏽‍♀️", style: baseStyle),
              InkWell(
                onTap: () async {
                  final url = Uri.parse(
                    "https://github.com/Miguelae9/PMDM_25-26_MiguelAngelPerezGarcia.git",
                  );
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                },
                child: Text(
                  "https://github.com/Miguelae9/PMDM_25-26_MiguelAngelPerezGarcia.git",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),
              ),
              Wrap(
                children: [
                  Text("Followed by ", style: greyStyle),
                  InkWell(
                    onTap: () {
                      // tu acción aquí
                    },
                    child: Text("Cristiano Ronaldo, ", style: boldBlackStyle),
                  ),
                  Text("Messi", style: boldBlackStyle),
                  Text(" and 67 others", style: greyStyle),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
