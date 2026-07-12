import 'dart:io';

void main() {
  int numero;
  int invertido = 0;
  int digito;

  print("Ingrese un número entero positivo:");
  numero = int.parse(stdin.readLineSync()!);

  do {
    digito = numero % 10;
    invertido = (invertido * 10) + digito;
    numero = numero ~/ 10;
  } while (numero > 0);

  print("");
  print("El número invertido es: $invertido");
}