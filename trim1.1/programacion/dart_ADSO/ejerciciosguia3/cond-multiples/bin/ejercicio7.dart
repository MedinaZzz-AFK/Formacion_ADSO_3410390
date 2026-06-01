import 'dart:io';

void main(List<String> arguments) {
  /* El costo de las llamadas internacionales depende de la zona geográfica,
     la clave y la duración de la llamada.
  */

  stdout.writeln("Ejercicio 7 - condicionales multiples");

  // DEFINICION DE VARIABLES
  int clave, minutos;
  double total, precioBase, precioAdicional;

  // ENTRADA
  stdout.writeln("Ingrese la duración de la llamada en minutos");
  minutos = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la clave");
  stdout.writeln("12: América del Norte");
  stdout.writeln("15: América Central");
  stdout.writeln("18: América del Sur");
  stdout.writeln("19: Europa");
  stdout.writeln("23: Asia");
  stdout.writeln("25: África");
  stdout.writeln("29: Oceanía");
  clave = int.parse(stdin.readLineSync()!);

  // PROCESO
  switch (clave) {
    case 12:
      precioBase = 200;
      precioAdicional = 150;
      break;

    case 15:
      precioBase = 220;
      precioAdicional = 180;
      break;

    case 18:
      precioBase = 450;
      precioAdicional = 350;
      break;

    case 19:
      precioBase = 350;
      precioAdicional = 270;
      break;

    case 23:
    case 25:
      precioBase = 600;
      precioAdicional = 460;
      break;

    case 29:
      precioBase = 500;
      precioAdicional = 390;
      break;

    default:
      precioBase = 0;
      precioAdicional = 0;
  }

  if (minutos <= 3) {
    total = precioBase;
  } else {
    total = precioBase + ((minutos - 3) * precioAdicional);
  }

  // SALIDA
  stdout.writeln("El costo total de la llamada es de \$$total");
}