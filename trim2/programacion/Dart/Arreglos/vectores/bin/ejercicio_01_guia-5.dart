/* 1. Calcular el promedio de 50 valores almacenados en un vector. Determinar además cuantos son
mayores que el promedio, imprimir el promedio, el número de datos mayores que el promedio y una
lista de valores mayores que el promedio. */

import 'dart:io';

void main(List<String> args) {
  List<double> numeros = [];
  List<double> mayoresPromedio = [];
  double promedio, sumaNumeros = 0, num;

  for (var i = 0; i < 50; i++) {
    print("porfavor ingrese los 50 numeros");
    print("ingrese el numero #${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num);
    sumaNumeros += num;
  }

  promedio = sumaNumeros / numeros.length;

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] > promedio) {
      mayoresPromedio.add(numeros[i]);
    }
  }

  print("el promedio es: $promedio");
  print("la cantidad de numeros mayores que el promedio es: ${mayoresPromedio.length}");
  print("lista de valores mayores al promedio: ");
  print(mayoresPromedio);
}