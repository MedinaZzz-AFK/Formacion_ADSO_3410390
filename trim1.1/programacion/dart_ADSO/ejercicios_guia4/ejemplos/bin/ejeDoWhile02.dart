/* eje.02. se requiere un validador de contraseña segura la cual debe cumplir que las contraseñas ingresadas tengan mas de 8 caracteres */

import 'dart:io';

void main(List<String> args) {
  String password;

  do {
    print("Ingrese  una contraseña valida");
    password= stdin.readLineSync()!;
    print("Longitud de la contraseña ${password.length}");
    if (password.length<8) {
      print("su contraseña no es segura ingresela de nuevo");
      
    }
  } while (password.length<8);

  print("su contraseña se ha aasignado con exito"); 
  
}