//9. Pedir el lado de un cubo y calcular su volumen V = lado^3.
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  //definicion
  double cubo;
  double volumen;

  //proceso
  print("porfavor digite un lado del cubo");
  cubo = double.parse(stdin.readLineSync()!);
  
  volumen = cubo*cubo*cubo;

  print("el volumen del cubo es: $volumen");

}