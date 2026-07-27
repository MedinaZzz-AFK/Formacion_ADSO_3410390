/*  3. Almacenar 15 números en un vector, imprimir cuantos son ceros, cuántos son negativos, cuantos positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos. */

import 'dart:io';

void main(List<String> args) {
  List<double> numeros = [];

  double suma = 0,
      suma2 = 0,
      suma0 = 0,
      contadorN = 0,
      contadorP = 0,
      contadorC = 0;
  print("porfavor ingrese 15 numeros");
  for (var i = 0; i < 15; i++) {
    print("ingrese el numero #${i + 1}");
    numeros.add(double.parse(stdin.readLineSync()!));
  }

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] == 0) {
      contadorC++;
      suma0 += numeros[i];
    }
  }

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] < 0) {
      contadorN++;
      suma2 += numeros[i];
    }
  }

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] > 0) {
      contadorP++;
      suma += numeros[i];
    }
  }

  print("la cantidad de ceros son: $contadorC y su suma es $suma0");
  print("la cantidad de negativos son: $contadorN y su suma es $suma2");
  print("la cantidad de positivos son: $contadorP y su suma es $suma");
}
