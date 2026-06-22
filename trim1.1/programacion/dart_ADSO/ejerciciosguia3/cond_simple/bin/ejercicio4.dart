/* 4. Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con
descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave
es 2 el descuento en del 20% (solo existen dos claves)*/

import 'dart:io';

void main(List<String> args) {
  String? nombre;
  double clave, precio, precioTotal, precioDescuento;

  print("digite el nombre del articulo ");
  nombre = stdin.readLineSync()!;

  print("digite el precio del articulo");
  precio = double.parse(stdin.readLineSync()!);

  print("porfavor seleccione la clave 1 o 2");
  clave = double.parse(stdin.readLineSync()!);

  precioDescuento = precio * 0.10;
  precioTotal = precio - precioDescuento;

  if (clave == 2) {
    precioDescuento = precio * 0.20;
    precioTotal = precio - precioDescuento;
  }

  
  print("El precio final de su producto $nombre es: \$ $precioTotal");

}