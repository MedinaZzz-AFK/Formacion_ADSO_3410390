/*  2. Llenar dos vectores A y B de 10 elementos cada uno, sumar el elemento uno del vector A con el elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e imprimir el vector resultante.*/

import 'dart:io';

void main(List<String> args) {
  List<double> vectorA = [];
  List<double> vectorB = [];
  List<double> vectorC = [];

  print("porfavor ingrese 10 numeros para el vector A y luego para el vector B");
  for (var i = 0; i < 10; i++) {
    print("porfavor escriba el numero #${i+1} de A:");
    vectorA.add(double.parse(stdin.readLineSync()!));
    
    print("porfavor escriba el numero #${i+1} de B: ");
    vectorB.add(double.parse(stdin.readLineSync()!));
  }

  for (var i = 0; i < 10; i++) {
    vectorC.add(vectorA[i]+vectorB[i]);
      }

      print(vectorC);

}