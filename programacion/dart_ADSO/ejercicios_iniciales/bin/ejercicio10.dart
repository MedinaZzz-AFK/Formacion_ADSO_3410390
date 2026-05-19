//Hacer un algoritmo que lea un número de metros y lo convierta a centímetros y
//milímetros
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  double metros;
  double cm;
  double mm;

  print("porfavor digite el numero de metros que quiere convertir a cm y mm");
  metros = double.parse(stdin.readLineSync()!);

  cm = metros * 100;
  mm = metros * 1000;

  print("los metros son: $metros, convertido a centimetros son: $cm centimetros; y a milimetros es: $mm milimetros");

}