import 'package:flutter/material.dart';

class LobbyScreen extends StatelessWidget {
  

  const LobbyScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salir'),
      ),
      body: const Center(
        child: Text(
            'Has iniciado sesión'), // Muestra el nombre de usuario
      ),
    );
  }
}
