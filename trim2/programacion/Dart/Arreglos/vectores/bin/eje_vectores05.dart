import 'dart:io';

void main(List<String> args) {
  /* Diseñar un algoritmo que almacene 10 números enteros en un vector. Luego, solicitar al usuario un número X a buscar. El programa debe contar cuántas veces aparece X dentro del vector y reemplazar cada una de sus apariciones por el valor 0. Finalmente, imprimir el número total de reemplazos realizados y el vector modificado. */

  List<int> vector = [];
  int numero, x;
  int contRemplazo = 0;
  for (var i = 0; i < 10; i++) {
    print("porfavor ingrese el numero #${i+1}");
    numero = int.parse(stdin.readLineSync()!);
    vector.add(numero);
  }

  print("introduce el numero X que quieres buscar");
  x = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < vector.length; i++) {
    if (vector[i] == x) {
      contRemplazo ++;
      vector[i]=0;
    }
  }

  print("el numero total de reemplazos fue: $contRemplazo");
  print("el valor del vector quedo igual a:");
  print(vector);


}