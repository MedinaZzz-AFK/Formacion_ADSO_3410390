import 'dart:io';

void main() {
  int cantidadNumeros;
  int contador = 1;

  double numero;
  double mayor;

  print("Ingrese la cantidad de números:");
  cantidadNumeros = int.parse(stdin.readLineSync()!);

  print("Ingrese el número 1:");
  mayor = double.parse(stdin.readLineSync()!);

  contador = 2;

  while (contador <= cantidadNumeros) {
    print("Ingrese el número $contador:");
    numero = double.parse(stdin.readLineSync()!);

    if (numero > mayor) {
      mayor = numero;
    }

    contador++;
  }

  print("");
  print("El mayor número es: $mayor");
}