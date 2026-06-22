/* 6. En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento
dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el
descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%.
Obtener cuánto dinero se le descuenta. */

import 'dart:io';

void main(List<String> args) {
  
  double totalCompra, descuento, totalPago, numero;

  print("porfavor escriba cual fue el total a pagar de su compra");
  totalCompra = double.parse(stdin.readLineSync()!);

  print("porfavor escoja un numero del 1 al 100 para participar por un descuento");
  numero = double.parse(stdin.readLineSync()!);

  descuento = totalCompra * 0.15;
  totalPago = totalCompra - descuento;

  if (numero >= 74) {
    descuento = totalCompra * 0.20;
    totalPago = totalCompra - descuento;
  }

  print("el total a pagar de su compra es: $totalPago (Su descuento fue de: $descuento)");



}