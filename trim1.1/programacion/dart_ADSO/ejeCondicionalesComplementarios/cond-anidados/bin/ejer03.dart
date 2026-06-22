/* 3. El sistema de seguridad Industri-ID realiza una validación exhaustiva para el ingreso
al complejo del SENA.
a. Primer nivel: Solicita el estado de la tarjeta RFID (1 para Activa, 0 para
Inactiva). Si está inactiva, bloquea el acceso inmediatamente sin preguntar
más datos.
b. Segundo nivel: Si la tarjeta está activa, solicita el rol del usuario ("instructor",
"administrativo" o "aprendiz").
i. Si es "instructor" o "adminisatrativo", se le concede acceso total de
forma inmediata (acceso 24/7).
ii. Si es "aprendiz", el sistema debe hacer una validación adicional.
c. Tercer nivel (Anidado dentro de aprendiz): El sistema solicita ingresar la
hora actual en formato militar (0 a 23). Si la hora está entre las 6 y las 18 (6:00
AM a 6:00 PM), se le permite el ingreso a los ambientes de formación. Si está
fuera de ese rango, se le deniega el acceso por horario no autorizado.
Desarrolle el algoritmo utilizando condicionales anidados para resolver esta
lógica de seguridad.*/

import 'dart:io';

void main(List<String> args) {
  String estadoTrg, rol;
  double horaIngr;

  print("porfavor ingresese su rol (aprendiz, instructor, administrativo)");
  rol = stdin.readLineSync()!.trim().toLowerCase();

  print("porfavor ingrese el estado de su targeta (activo | inactivo)");
  estadoTrg = stdin.readLineSync()!.trim().toLowerCase();

  print("porfavor ingrese cual es la hora de ingreso en formato militar");
  horaIngr = double.parse(stdin.readLineSync()!);

  if (estadoTrg == "activo") {
    print("acceso permitido");
    if (rol == "instructor" || rol == "administrativo") {
      print("acceso total de forma inmediata (acceso 24/7).");
    } else {
      if (rol == "aprendiz") {
        if (horaIngr > 6 && horaIngr < 18) {
          print(
            "su ingreso al ambiente de formacon es permitido, BIENVENIDO! :)",
          );
        } else {
          print(
            "usted no puede pasar, no esta en el horario de ingreso permitido",
          );
        }
      }
    }
  } else {
    print("acceso denegado");
  }
}
