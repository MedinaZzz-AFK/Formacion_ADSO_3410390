/* para un modulo del proyecto de identificacion fisica y digital (indus ID), necesita validar un pin de seguridad de 4 digitos, Escrib eun programa que simule el ingresode contraseñas de usuario mientras el pin ingresado sea incorrecto el sistema debe denegar el acceso */

import 'dart:io';

void main(List<String> args) {
  String pinCorrecto = "2402", pinIngresado;
  bool accesoConcedido = false;
  int intentos = 0, maxIntentos = 3;

  while (accesoConcedido == false && intentos < maxIntentos) {
    print("ingrese la contraseña de acceso");
    pinIngresado = stdin.readLineSync()!;

    if (pinIngresado == pinCorrecto) {
      print("acceso concedido! puede ingresar");
      accesoConcedido = true;
    } else {
      print("el PIN es incorrecto! acceso Denegado.");
      intentos++;
      if (intentos >= maxIntentos) {
        print("su cuenta ha sido bloqueada por motivos de seguridad");
      }
    }
  }
}
