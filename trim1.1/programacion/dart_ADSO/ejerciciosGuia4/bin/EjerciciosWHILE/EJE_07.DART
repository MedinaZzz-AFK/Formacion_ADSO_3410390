import 'dart:io';

void main() {
  int cantidadNumeros;
  int contador = 1;

  double numero;
  double menor;

  print("Ingrese la cantidad de números:");
  cantidadNumeros = int.parse(stdin.readLineSync()!);

  print("Ingrese el número 1:");
  menor = double.parse(stdin.readLineSync()!);

  contador = 2;

  while (contador <= cantidadNumeros) {
    print("Ingrese el número $contador:");
    numero = double.parse(stdin.readLineSync()!);

    if (numero < menor) {
      menor = numero;
    }

    contador++;
  }

  print("");
  print("El menor número es: $menor");
}