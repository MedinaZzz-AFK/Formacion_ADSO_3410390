/* 2. La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su
terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas
que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual
se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de
400 metros cuadrados se hace un descuento del 10%. */

import 'dart:io';

void main(List<String> args) {

  //definicion
  double largo, ancho, precioFinal, precioM, area;

  //inicio

  print("porfavor ingrese el largo del terreno: ");
  largo = double.parse(stdin.readLineSync()!);

  print("porfavor ingrese el ancho del terreno: ");
  ancho = double.parse(stdin.readLineSync()!);

  print("porfavor ingrese el precio por m[2]");
  precioM = double.parse(stdin.readLineSync()!);

  //proceso

  area = largo * ancho;
  precioFinal = area * precioM;

  if (area > 400){
    precioFinal = precioFinal * 0.10;
  }

  //finAlgoritmo

  print("el costo total de su terreno es: $precioFinal");


}