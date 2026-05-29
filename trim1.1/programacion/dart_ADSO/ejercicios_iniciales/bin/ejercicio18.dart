//Leer el número de un mes (1 a 4) y mostrar la estación del año correspondiente
//(ejemplo: 1-Verano, 2-Otoño, etc.).
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  double opcion;

  print("porfavor digite el numero de mes (1, 2, 3, 4)");
  opcion = double.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
    print("la estacion de año correspondiente es: verano");
    break;
    case 2:
    print("la estacion del año es otoño");
    break;
    case 3:
    print("la estacion del año es primavera");
    break;
    case 4:
    print("la estacion del año es invierno");
    default:
    print("la opcion digitada es erronea");
  }

}