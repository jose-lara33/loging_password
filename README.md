Copiar
# Proyecto de Login con Google Sheets

¡Bienvenido a este proyecto de login simple! Este proyecto tiene como objetivo crear una interfaz de usuario básica que permita a los usuarios iniciar sesión y navegar entre dos pantallas, utilizando datos almacenados en Google Sheets.

## Descripción

El proyecto consta de dos pantallas principales:

1. **Pantalla de Login**:
   - Cuadro de texto para introducir el **usuario**.
   - Cuadro de texto para introducir la **contraseña**.
   - Botón con el texto **"Login"** que, al hacer clic, verifica las credenciales contra los registros en una hoja de cálculo de Google Sheets. Si las credenciales son correctas, redirige a la segunda pantalla. Si no, se muestra un **SnackBar** informando al usuario.

2. **Segunda Pantalla**:
   - Un **AppBar** que muestra el nombre de usuario introducido en la pantalla de login.
   - Un botón de **Cerrar Sesión** en la parte derecha del AppBar, que permite regresar a la pantalla de login y requiere que el usuario vuelva a ingresar sus credenciales.

## Características

- **Validación de Credenciales**: La aplicación verifica si el usuario y la contraseña coinciden con los datos obtenidos de Google Sheets.
- **Interfaz Amigable**: Diseño simple y limpio para una fácil navegación.
- **Manejo de Errores**: Se proporciona retroalimentación clara al usuario en caso de errores de inicio de sesión.
- **Carga de Datos Asincrónica**: Utiliza un `FutureBuilder` para cargar los datos de Google Sheets, mostrando un `CircularProgressIndicator` mientras se cargan.

## Tecnologías Utilizadas

- **Lenguaje**: Dart
- **Framework**: Flutter
- **IDE**: Android Studio / Visual Studio Code
- **API**: Google Sheets API (a través de Google Apps Script)


Licencia
Este proyecto está bajo la Licencia MIT. Para más detalles, consulta el archivo LICENSE.

