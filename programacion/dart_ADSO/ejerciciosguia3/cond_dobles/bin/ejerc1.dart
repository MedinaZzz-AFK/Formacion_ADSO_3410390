/* Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente */

import 'dart:io';

void main(List<String> args) {
  double num1;
  double num2;

  print("porfavor digite el primer numero");
  num1 = double.parse(stdin.readLineSync()!);

  print("porfavr digite el segundo numero");
  num2 = double.parse(stdin.readLineSync()!);

  if (num1 >= num2) {
    print("lus numeros en forma ascendente son: $num1, $num2");
  } else {
    print("los numeros en forma ascendente son: $num2, $num1");
  }
}
