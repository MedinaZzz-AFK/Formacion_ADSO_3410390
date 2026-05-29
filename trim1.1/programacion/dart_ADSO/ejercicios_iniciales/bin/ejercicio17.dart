//Pedir tres números al usuario y mostrar cuál es el menor de los tres
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  double num1;
  double num2;
  double num3;

  print("porfavor ingrese el numero 1");
  num1 = double.parse(stdin.readLineSync()!);
  print("porfavor ingrese el numero 2");
  num2 = double.parse(stdin.readLineSync()!);
  print("porfavor ingrese el numero 3");
  num3 = double.parse(stdin.readLineSync()!);

  if (num1 < num2 && num2 < num3) {
    print("el numero menor es $num1");
  } else {
    if (num2 < num1 && num2 < num3) {
      print("el numero menor es: $num2");
    } else {
      print("el numero menor es: $num3");
    }
  }
}
