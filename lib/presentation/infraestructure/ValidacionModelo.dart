
class Validacionmodelo {
  final String token; 

  // Constructor.
  Validacionmodelo({required this.token});

  // Método para crear una instancia de Validacionmodelo desde un mapa JSON.
  factory Validacionmodelo.fromJsonMap(Map<String, dynamic> json) {
    return Validacionmodelo(
      token: json['token'], 
    );
  }

  // Método para convertir el modelo a una entidad de Usuario.
  Usuario toMessageEntity() => Usuario(
        username: token, // Asigna el token al campo username , supuestamente
      );
}

// Clase Usuario como ejemplo.
class Usuario {
  final String username;

  Usuario({required this.username});
}
