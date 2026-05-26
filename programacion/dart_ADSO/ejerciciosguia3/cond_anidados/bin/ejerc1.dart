/* 1. Dado tres números calcular el mayor */

import 'dart:io';

void main(List<String> args) {
  double num1;
  double num2;
  double num3;

  print("porfavor digite el numero 1");
  num1 = double.parse(stdin.readLineSync()!);

  print("porfavor digite el numero 2");
  num2 = double.parse(stdin.readLineSync()!);

  print("porfavor digite el numero 3");
  num3 = double.parse(stdin.readLineSync()!);

  if (num1 > num2 && num1 > num3) {
    print("el numero mayor es $num1");
  } else {
    if (num2 > num1 && num2 > num3) {
      print("el numero mayor es: $num2");
    } else {
      if (num3 > num1 && num3 > num2) {
        print("el numero mayor es: $num3");
      }
    }
  }
}
