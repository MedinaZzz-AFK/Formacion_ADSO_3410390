import 'dart:io';

void main(List<String> arguments) {
  /*Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de 
plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea 
fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución : 
Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea 
Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea 
Tipo 3 : Fumigación contra gusanos, $80000 por hectárea. 
Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea. 
• Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento. 
• Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la 
cantidad que sobrepase el $1000000. 
• Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero. 
Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de 
hectáreas a fumigar.  
Se debe imprimir el nombre del granjero y la cuenta total. */

  stdout.writeln("Ejercicio 2 - condicionales multiples");

  //DEFINICION DE VARIABLES
  int tipo;
  String nombre;
  double total, hectareas, descuento, descuento1, cuenta;

  //ENTRADA
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync()!;
  stdout.writeln("¿Qué tipo de fumigación desea?");
  stdout.writeln("Tipo 1 : Fumigación contra malas hierbas, \$50000 por hectárea");
  stdout.writeln("Tipo 2 : Fumigación contra moscas y mosquitos, \$70000 por hectárea");
  stdout.writeln("Tipo 3 : Fumigación contra gusanos, \$80000 por hectárea");
  stdout.writeln("Tipo 4 : Fumigación contra todo lo anterior, \$190000 por hectárea");
  tipo = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el numero de hectareas a fumigar");
  hectareas = double.parse(stdin.readLineSync()!);

  //PROCESO
  switch (tipo) {
    case 1:
      cuenta = hectareas * 50000;
      break;
    case 2:
      cuenta = hectareas * 70000;
      break;
    case 3:
      cuenta = hectareas * 80000;
      break;
    case 4:
      cuenta = hectareas * 190000;
      break;
    default:
      cuenta = 0;
  }

  descuento = 0;
  if (hectareas > 100) {
    descuento = cuenta * 0.05;
    cuenta = cuenta - descuento;
  }

  descuento1 = 0;
  if (cuenta > 1000000) {
    descuento1 = (cuenta - 1000000) * 0.1;
  }

  total = cuenta - descuento1;

  stdout.writeln("Nombre del cliente: $nombre");
  stdout.writeln("Total a pagar: \$$total");
}
