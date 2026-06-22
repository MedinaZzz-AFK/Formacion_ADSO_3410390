/* 3. Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero */

import 'dart:io';

void main(List<String> args) {
  double numPositivo = 0, numNegativo = 0, cero = 0, numero;

  for (var i = 1; i <= 20; i++) {
    print("porfavor digite el numero $i");
    numero = double.parse(stdin.readLineSync()!);

    if (numero > 0) {
      numPositivo += 1;
    } else {
      if (numero == 0) {
        cero += 1;
      } else {
        numNegativo += 1;
      }
    }
  }

  print("los numeros positivos son $numPositivo");
  print("los numeros negativos son: $numNegativo");
  print("la cantidad de ceros que hay es: $cero");
}
