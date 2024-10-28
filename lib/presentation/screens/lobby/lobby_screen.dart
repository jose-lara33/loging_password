import 'package:flutter/material.dart';

import 'package:validacionusuarios/config/theme/helpers/get_loging.dart';
import 'package:validacionusuarios/presentation/domain/usuario.dart';



class LobbyScreen extends StatefulWidget {
  final String username;
  final String password;

  const LobbyScreen({Key? key, required this.username, required this.password}) : super(key: key);

  @override
  _LobbyScreenState createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  late Future<bool> _userValidationFuture;

  Future<bool> validarUsuario(String username, String password) async {
    final getLoging = GetLoging();
    final usuarios = await getLoging.obtenerUsuarios();

    if (usuarios.isNotEmpty) {
      final usuarioValido = usuarios.firstWhere(
        (user) => user.nombre == username && user.clave == password,
        orElse: () => User(id: '', nombre: '', clave: '', userClave: ''),
      );
      return usuarioValido.id.isNotEmpty;
    }

    return false;
  }

  @override
  void initState() {
    super.initState();
    _userValidationFuture = validarUsuario(widget.username, widget.password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Segunda Pantalla')),
      body: Center(
        child: FutureBuilder<bool>(
          future: _userValidationFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData && snapshot.data == true) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bienvenido, ${widget.username}'),
                    const SizedBox(height: 20),
                    Text('Has iniciado sesión correctamente.', style: TextStyle(fontSize: 18)),
                  ],
                ),
              );
            } else {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _showAlertDialog(context, 'Error', 'Usuario o contraseña incorrectos.');
                Navigator.of(context).pop();
              });
              return Container();
            }
          },
        ),
      ),
    );
  }
}

void _showAlertDialog(BuildContext context, String title, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cerrar'),
          ),
        ],
      );
    },
  );
}