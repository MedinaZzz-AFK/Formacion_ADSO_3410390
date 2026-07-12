/* Eje 02. Se requiere un validador de contraseña segura la cual debe cumplir que las contraseñas incresadas por el usuario tengan más de 8 caracteres */

import 'dart:io';

void main(List<String> args) {
  String password;

  do {
    print('Ingrese una contraseña válida');
    password = stdin.readLineSync()!;
    print('Longitud de la contraseña ${password.length}');
    if (password.length <= 8 ) {
      print('Su contraseña no es segura, ingrese de nuevo');
    }
  } while (password.length <= 8);
  print('Su contraseña se ha asignado con exito');
}