import 'dart:io';

void main(List<String> args) {
  /* Para un modulo del proyecto de identificacion fiscal y digital (IndustID), necesitas validar un PIN de seguridad de 4 digitos. Escribe un programa que simule el ingreso de contraseñas de un ususario. Mientras el PIN ingresado sea incorrecto, el sistema debe denegar el acceso*/

  String pinCorrecto = "9220";
  String pinIngresado;
  bool accesoConcedido = false;

  while (accesoConcedido == false) {
    print('Ingrese la contraseña de acceso');
    pinIngresado = stdin.readLineSync()!;
    if (pinIngresado == pinCorrecto) {
      print('Accceso concedido! puede ingresar');
      accesoConcedido = true;
    } else {
      print('El PIN es incorrecto');
    }
  }
}