import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  /* Dados como datos dos variables de tipo entero,
     obtenga el resultado de la siguiente función:

     Num = 1  -> 100 * v
     Num = 2  -> 100^v
     Num = 3  -> 100 / v
     Otro     -> 0
  */

  stdout.writeln("Ejercicio 3 - condicionales multiples");

  // DEFINICION DE VARIABLES
  int num;
  double resultado, v;

  // ENTRADA
  stdout.writeln("Ingrese el valor de v");
  v = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el valor de num");
  num = int.parse(stdin.readLineSync()!);

  // PROCESO
  switch (num) {
    case 1:
      resultado = 100 * v;
      break;

    case 2:
      resultado = pow(100, v).toDouble();
      break;

    case 3:
      resultado = 100 / v;
      break;

    default:
      resultado = 0;
  }

  // SALIDA
  stdout.writeln("El resultado es $resultado");
}