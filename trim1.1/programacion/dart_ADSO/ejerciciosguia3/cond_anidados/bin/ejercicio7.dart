/* 7. Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los
reste y si no que los sume. */

import 'dart:io';

void main(List<String> args) {
  double num1, num2, total;

  print("porfavor digite el numero 1");
  num1 = double.parse(stdin.readLineSync()!);

  print("porfavor digite el numero 2");
  num2 = double.parse(stdin.readLineSync()!);

  if( num1 == num2){
    total = num1 * num2;
    print("el resultado de sus numeros iguales (multiplicados) es: $total");
  }else{
    if(num1 > num2){
      total = num1 - num2;
      print("el resultado de sus numeros siendo el numero 1 mayor que el numero 2 (resta) es: $total");
    }else{
      if(num2>num1){
        total= num1+num2;
        print("el resultado de sus numeros siendo numero 2 mayor que numero 1(suma) es: $total");
      }
    }
  }
}