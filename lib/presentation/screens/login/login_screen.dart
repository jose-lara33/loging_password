import 'package:flutter/material.dart'; // Importa el paquete de Material Design de Flutter.
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:validacionusuarios/config/menu/menu_item.dart'; // Importa Riverpod para la gestión del estado.

class LoginScreen extends ConsumerWidget {
  // Define una clase llamada LoginScreen que extiende ConsumerWidget.
  static const name =
      'login_screen'; // Define un nombre constante para la pantalla.

  const LoginScreen(
      {super.key}); // Constructor de la clase, permite la clave de superclase.

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Método que construye el widget.
    final TextEditingController usernombreController =
        TextEditingController(); // Controlador para el campo de usuario.
    final TextEditingController contrasenaController = TextEditingController();
    const MenuItem menuItem = MenuItem(
        title: '',
        subTitle: '',
        link: '/lobby',
        icon: Icons.add); // Controlador para el campo de contraseña.

    return Scaffold(
      // Devuelve un Scaffold, que es una estructura básica para la interfaz de usuario.
      appBar: AppBar(
        // Crea una barra de aplicación en la parte superior.
        title:
            const Text('Iniciar Sesión'), // Título de la barra de aplicación.
      ),
      body: Center(
        // Centra el contenido en el cuerpo de la pantalla.
        child: Padding(
          // Añade un padding alrededor del contenido.
          padding: const EdgeInsets.all(
              16.0), // Establece un padding de 16 píxeles en todos los lados.
          child: Column(
            // Crea una columna para organizar los widgets verticalmente.
            mainAxisAlignment: MainAxisAlignment
                .center, // Centra los hijos en el eje principal.
            children: [
              TextField(
                // Crea un campo de texto para el usuario.
                controller:
                    usernombreController, // Asocia el controlador al campo de texto.
                decoration: const InputDecoration(
                  // Configura la apariencia del campo de texto.
                  labelText: 'Usuario', // Texto que aparece arriba del campo.
                  border:
                      OutlineInputBorder(), // Establece un borde alrededor del campo.
                ),
              ),
              const SizedBox(
                  height:
                      16), // Espacio vertical de 16 píxeles entre los campos.
              TextField(
                // Crea un campo de texto para la contraseña.
                controller:
                    contrasenaController, // Asocia el controlador al campo de texto.
                decoration: const InputDecoration(
                  // Configura la apariencia del campo de texto.
                  labelText:
                      'Contraseña', // Texto que aparece arriba del campo.
                  border:
                      OutlineInputBorder(), // Establece un borde alrededor del campo.
                ),
                obscureText:
                    true, // Oculta el texto ingresado (para contraseñas).
              ),
              const SizedBox(
                  height:
                      16), // Espacio vertical de 16 píxeles entre los campos.
              ElevatedButton(
                // Crea un botón elevado.
                onPressed: () {
                  // Define la acción que se ejecuta al presionar el botón.
                  // Aquí puedos manejar la lógica de inicio de sesión.
                  final username = usernombreController.text; // Obtiene el texto del campo de usuario.
                  final password = contrasenaController.text;// Obtiene el texto del campo de contraseña.
                  
                  print('Usuario: $username, Contraseña: $password');// Imprime las credenciales en la consola.

                       context.push(menuItem.link); 
                },
                child: const Text(
                    'Iniciar Sesión'), // Texto que aparece en el botón.
              ),
            ],
          ),
        ),
      ),
    );
  }
}
