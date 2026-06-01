import 'dart:io';

void main(List<String> arguments) {
  /* Desarrollar un algoritmo que lea el nombre del mes y el año
     e imprima cuantos días tiene. Tener en cuenta si el año es bisiesto.
  */

  stdout.writeln("Ejercicio 6 - condicionales multiples");

  // DEFINICION DE VARIABLES
  String mes;
  int anio, dias;

  // ENTRADA
  stdout.writeln("Ingrese el nombre del mes");
  mes = stdin.readLineSync()!.toLowerCase();

  stdout.writeln("Ingrese el año");
  anio = int.parse(stdin.readLineSync()!);

  // PROCESO
  switch (mes) {
    case "enero":
    case "marzo":
    case "mayo":
    case "julio":
    case "agosto":
    case "octubre":
    case "diciembre":
      dias = 31;
      break;

    case "abril":
    case "junio":
    case "septiembre":
    case "noviembre":
      dias = 30;
      break;

    case "febrero":
      if ((anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0)) {
        dias = 29;
      } else {
        dias = 28;
      }
      break;

    default:
      dias = 0;
  }

  // SALIDA
  if (dias == 0) {
    stdout.writeln("Mes no válido");
  } else {
    stdout.writeln("El mes de $mes del año $anio tiene $dias días");
  }
}