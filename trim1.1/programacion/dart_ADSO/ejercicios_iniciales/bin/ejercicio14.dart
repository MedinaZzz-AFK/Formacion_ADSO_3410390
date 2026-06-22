// Pedir dos números y mostrar el resultado de restarle el menor al mayor.
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  //definicion
  double num1;
  double num2;
  double total;
   print("porfavor ingrese el primer numero");
  num1 = double.parse(stdin.readLineSync()!);
  print("porfavor ingrese el segundo numero");
  num2 = double.parse(stdin.readLineSync()!);
  //proceso

 if (num1 > num2){

  total = num1 - num2;
  print("el restultado de la operacion es: $total");
 }else{
  total = num2 - num1;

  print("el resultado de la operacion es: $total");
 }
}