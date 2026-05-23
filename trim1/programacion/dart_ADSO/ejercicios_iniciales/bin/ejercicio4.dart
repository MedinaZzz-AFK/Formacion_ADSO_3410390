// Pedir al usuario su edad actual y mostrar cuántos años tendrá en el año 2050
// jeronimo medina

import 'dart:io';

void main(List<String> args) {
  //definicion
  int edad2026;
  int anoactual = 2026;
  int anofuturo = 2050;
  int operedad;
// proceso
  print("porfavor digite la edad que tiene en estos momentos");
   edad2026 = int.parse(stdin.readLineSync()!);

  operedad = (anofuturo - anoactual) + edad2026;

  print("la edad que tendra en el 2050 sera: $operedad años");

}