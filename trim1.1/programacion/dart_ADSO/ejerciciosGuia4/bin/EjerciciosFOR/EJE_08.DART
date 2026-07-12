import 'dart:io';

void main() {
  int numero;
  int factorial = 1;

  print("Ingrese un número entero:");
  numero = int.parse(stdin.readLineSync()!);

  if (numero == 0) {
    factorial = 1;
  } else {
    for (int i = 1; i <= numero; i++) {
      factorial = factorial * i;
    }
  }

  print("");
  print("El factorial de $numero es: $factorial");
}