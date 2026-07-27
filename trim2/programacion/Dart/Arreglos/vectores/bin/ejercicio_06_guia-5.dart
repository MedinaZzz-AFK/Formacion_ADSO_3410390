/* 6. Diseñe un algoritmo que lea dos vectores A y B de 7 elementos cada uno y multiplique el primer
elemento de A con el último elemento de B y luego el segundo elemento de A por el sexto elemento
de B y así sucesivamente hasta llegar al séptimo elemento de A por el primer elemento de B. El
resultado de la multiplicación almacenarlo en un vector C. Mostrar el resultado. */

import 'dart:io';

void main(List<String> args) {
  List<int> vectorA = [];
  List<int> vectorB = [];
  List<int> vectorC = [];

  int multiplicacion, numA, numB;

  for (var i = 0; i < 7; i++) {
    print("porfavor digite el numero #${i + 1} de A:");
    numA = int.parse(stdin.readLineSync()!);
    vectorA.add(numA);
  }

  print("-" * 40);

  for (var i = 0; i < 7; i++) {
    print("porfavor digite el numero #${i + 1} de B:");
    numB = int.parse(stdin.readLineSync()!);
    vectorB.add(numB);
  }

  for (var i = 0; i < vectorA.length; i++) {
    multiplicacion = vectorA[i] * vectorB[6 - i];
    vectorC.add(multiplicacion);
  }

  print("el resultado en el vector C es: $vectorC ");
}
