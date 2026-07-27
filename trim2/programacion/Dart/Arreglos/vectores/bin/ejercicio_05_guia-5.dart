/* 5. Diseñe un algoritmo que lea un número cualquiera y lo busque en el vector X, el cual tiene
almacenados 12 elementos. Escribir la posición donde se encuentra almacenado el número en el
vector o el mensaje “NO” si no lo encuentra. */

import 'dart:io';

void main(List<String> args) {
  List<int> numero=[1,2,3,4,5,6,7,8,9,10,11,12];

  int numero1;
  bool numeroE=false;
  print("porfavor ingrese el numero que quiere buscar en el vector, tenga en cuenta que debe ser un numero ENTERO");
  numero1 = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < numero.length; i++) {

    if (numero[i] == numero1) {
      print("el numero se encuentra en la posicion $i");
      numeroE=true;
      break;
    }
  }

  if (!numeroE) {
    print("el numero no se encontro");
  }

}