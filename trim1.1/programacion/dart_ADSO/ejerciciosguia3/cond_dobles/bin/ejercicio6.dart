/* El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la
superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:
Porcentaje de la superficie del bosque Tipo de árbol
70% Pino
20% Roble
10% Cedro
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la
sig. manera:
Porcentaje de la superficie del bosque Tipo de árbol
50% Pino
30% Roble
20% Cedro
El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe
que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados
caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados. */

import 'dart:io';

void main(List<String> args) {
  double numHectareas;
  double cantPinos;
  double cantRobles;
  double cantCedros;
  double metrosC;
  double porcentajePinos;
  double porcentajeRobles;
  double porcentajeCedros;

  print("Digite el numero de hectareas del terreno");
  numHectareas = double.parse(stdin.readLineSync()!);

  metrosC = numHectareas * 10000;

  if (metrosC > 1000000){
    porcentajePinos = (0.70 * metrosC);
    porcentajeRobles = metrosC * 0.20;
    porcentajeCedros = metrosC * 0.10;

    cantPinos = (porcentajePinos / 10)*8;
    cantRobles = (porcentajeRobles / 15)*15;
    cantCedros = (porcentajeCedros / 18)*10;

    print("la cantidad de pinos que tendran que sembrar en un 70% de terrero que serian $porcentajePinos m^2 es: $cantPinos, la cantidad de robles que tendran que sembrar en un 20% de terreno que equivale a $porcentajeRobles m^2 es: $cantRobles, y la cantidad de cedros que tendran que sembrar en un 10% de terreno que equivale al $porcentajeCedros m^2 es: $cantCedros");

  }else {
     porcentajePinos = (0.50 * metrosC);
    porcentajeRobles = metrosC * 0.30;
    porcentajeCedros = metrosC * 0.20;

    cantPinos = (porcentajePinos / 10)*8;
    cantRobles = (porcentajeRobles / 15)*15;
    cantCedros = (porcentajeCedros / 18)*10;

    print("la cantidad de pinos que tendran que sembrar en un 50% de terrero que serian $porcentajePinos m^2 es: $cantPinos, la cantidad de robles que tendran que sembrar en un 30% de terreno que equivale a $porcentajeRobles m^2 es: $cantRobles, y la cantidad de cedros que tendran que sembrar en un 20% de terreno que equivale al $porcentajeCedros m^2 es: $cantCedros");
  }
}