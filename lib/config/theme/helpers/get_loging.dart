import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:validacionusuarios/presentation/domain/usuario.dart';

class GetLoging {
  final Dio _dio = Dio();

  Future<List<User>> obtenerUsuarios() async {
    try {
      const url = 'https://https://script.google.com/macros/s/AKfycbwa3-G3ke4pFoy35xD8HBIsslMx1_WukRRsquewxSbO8k1Flbk8yxdq7rEN3BnquL17CQ/exec?spreadsheetId=19d_WEeCryV9EkxPtegHvv0ttAPUoYmVCfwLAUPK6Rp4&sheet=Usuarios';
      final response = await _dio.get(url);

      if (response.statusCode == 200 && response.data != null) {
        final List<dynamic> parsedData = json.decode(response.data);
        return parsedData.map((item) => User.fromJson(item)).toList();
      } else {
        print('Error en la respuesta: ${response.statusCode}');
        return [];
      }
    } catch (e) {
  if (e is DioException) {
    print('DioError Type: ${e.type}');
    print('DioError Message: ${e.message}');
  }
  print('Error al obtener usuarios: $e');
  return [];
}
  }
  
}



// . first wer 
//https://script.google.com/macros/s/AKfycbwa3-G3ke4pFoy35xD8HBIsslMx1_WukRRsquewxSbO8k1Flbk8yxdq7rEN3BnquL17CQ/exec?username=<username>&password=<password>&spreadsheetId=19d_WEeCryV9EkxPtegHvv0ttAPUoYmVCfwLAUPK6Rp4&sheet=Usuarios';
//https://script.google.com/macros/s/AKfycbwa3-G3ke4pFoy35xD8HBIsslMx1_WukRRsquewxSbO8k1Flbk8yxdq7rEN3BnquL17CQ/exec?spreadsheetId=19d_WEeCryV9EkxPtegHvv0ttAPUoYmVCfwLAUPK6Rp4&sheet=Usuarios
