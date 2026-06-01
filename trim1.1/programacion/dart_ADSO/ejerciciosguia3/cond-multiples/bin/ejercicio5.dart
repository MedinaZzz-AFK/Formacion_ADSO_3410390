import 'dart:io';

void main(List<String> arguments) {
  /* El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave.
Clave Zona Precio
12 América del Norte 200
15 América Central 220
18 América del Sur 450
19 Europa 350
23 Asia 600
25 África 600
29 Oceanía 500
Construya la solución para calcular e imprimir el costo de una llamada dada la clave
  */

  stdout.writeln("Ejercicio 5 - condicionales multiples");

  // DEFINICION DE VARIABLES
  int clave, minutos, total;

  // ENTRADA
  stdout.writeln("Ingrese los minutos usados");
  minutos = int.parse(stdin.readLineSync()!);
  stdout.writeln("12: América del Norte - 200");
  stdout.writeln("15: América Central - 220");
  stdout.writeln("18: América del Sur - 450");
  stdout.writeln("19: Europa - 350");
  stdout.writeln("23: Asia - 600");
  stdout.writeln("25: África - 600");
  stdout.writeln("29: Oceanía - 500");
  clave = int.parse(stdin.readLineSync()!);

  // PROCESO
  switch (clave) {
    case 12:
      total = 200 * minutos;
      break;

    case 15:
      total = 220 * minutos;
      break;

    case 18:
      total = 450 * minutos;
      break;

    case 19:
      total = 350 * minutos;
      break;

    case 23:
    case 25:
      total = 600 * minutos;
      break;

    case 29:
      total = 500 * minutos;
      break;

    default:
      total = 0;
      stdout.writeln("Clave no válida");
  }

  // SALIDA
  stdout.writeln("El valor de la llamada es de \$$total");
}
