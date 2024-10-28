import 'package:flutter/material.dart'; // Importa el paquete de Material Design de Flutter.

import 'package:go_router/go_router.dart';

import 'package:validacionusuarios/presentation/screens/screens.dart';
// Importa Riverpod para la gestión del estado.

class LoginScreen extends StatelessWidget {
  final TextEditingController usernombreController = TextEditingController();
  final TextEditingController contrasenaController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  void navigateToSecondScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => LobbyScreen(
        username: usernombreController.text,
        password: contrasenaController.text,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernombreController,
                decoration: const InputDecoration(
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: contrasenaController,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => navigateToSecondScreen(context),
                child: const Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
