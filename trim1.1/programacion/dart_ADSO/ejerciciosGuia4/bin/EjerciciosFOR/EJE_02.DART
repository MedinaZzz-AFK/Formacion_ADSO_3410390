import 'dart:io';

void main() {
  List<int> numeros = [];

  // Leer los 10 números
  for (int i = 1; i <= 10; i++) {
    print("Ingrese el número $i:");
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  print("\nNúmeros positivos:");

  // Mostrar solamente los positivos
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] > 0) {
      print(numeros[i]);
    }
  }
}