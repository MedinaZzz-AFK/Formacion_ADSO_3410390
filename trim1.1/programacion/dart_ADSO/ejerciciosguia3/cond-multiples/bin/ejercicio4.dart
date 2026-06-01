import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  /* Calcular el valor de f(x) según:
  
     x % 4 = 0  -> x²
     x % 4 = 1  -> x / 6
     x % 4 = 2  -> √x
     x % 4 = 3  -> x³ + 5
  */

  stdout.writeln("Ejercicio 4 - condicionales multiples");

  // DEFINICION DE VARIABLES
  int x;
  double fx;

  // ENTRADA
  stdout.writeln("Ingrese el valor de x");
  x = int.parse(stdin.readLineSync()!);

  // PROCESO
  switch (x % 4) {
    case 0:
      fx = pow(x, 2).toDouble();
      break;

    case 1:
      fx = x / 6;
      break;

    case 2:
      fx = sqrt(x);
      break;

    case 3:
      fx = pow(x, 3).toDouble() + 5;
      break;

    default:
      fx = 0;
  }

  // SALIDA
  stdout.writeln("El valor de f(x) es $fx");
}