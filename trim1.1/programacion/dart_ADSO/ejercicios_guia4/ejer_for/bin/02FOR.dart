/*  2. Leer 10 números e imprimir solamente los números positivos */

import 'dart:io';

void main(List<String> args) {
  double numeros;
  String numerosPositivos="";

  for (var i = 1; i <= 10; i++) {
    print("porfavor digite el numero $i");
    numeros = double.parse(stdin.readLineSync()!);

    if (numeros > 0) {
      numerosPositivos += "$numeros\n";
    }
  }

  print("los numeros positivos son: \n$numerosPositivos");
}
