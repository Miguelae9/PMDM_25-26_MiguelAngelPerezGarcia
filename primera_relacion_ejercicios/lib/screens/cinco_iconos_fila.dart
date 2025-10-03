import 'package:flutter/material.dart';

class CincoIconosFila extends StatelessWidget {
  const CincoIconosFila({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra superior
        title: Text("5 Iconos en Fila"), // Título de la App Bar
        backgroundColor: const Color.fromARGB(255, 241, 78, 119),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 122, 155),
      body: Center(
        // Centra el contenido
        child: Row(
          // Organiza los widgets hijos en una fila
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los hijos horizontalmente
          children: [
            // Lista de los cinco iconos
            Icon(Icons.access_alarm_rounded),
            Icon(Icons.accessible_forward_sharp),
            Icon(Icons.account_balance_wallet_rounded),
            Icon(Icons.add_alert_rounded),
            Icon(Icons.wrap_text_sharp),
          ],
        ),
      ),
    );
  }
}
