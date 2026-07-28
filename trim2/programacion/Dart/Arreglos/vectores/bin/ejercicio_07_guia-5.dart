/* 7. Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si es
palabra o frase es palíndroma.*/

import 'dart:io';

void main() {
  print("Por favor digite la palabra o frase:");
  String entrada = stdin.readLineSync()!;

  // ANA

  List<String> vector = [];

  for (var i = 0; i < entrada.length; i++) {
    String caracter = entrada[i].toLowerCase();
    if (caracter != ' ') {
      vector.add(caracter);
    }
  }

  bool esPalindromo = true;
  int tamano = vector.length;

  for (var i = 0; i < tamano / 2; i++) {
    if (vector[i] != vector[tamano - 1 - i]) {
      esPalindromo = false;
      break;
    }
  }

  print("-" * 40);
  if (esPalindromo) {
    print("La palabra o frase ES palíndroma.");
  } else {
    print("La palabra o frase NO es palíndroma.");
      }
}
