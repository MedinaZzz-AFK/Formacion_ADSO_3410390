// 6. Pedir el precio de un producto y mostrar el valor del IVA (19%) y el precio total con
//impuesto
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  //definicion
  double precio;
  double total;
  double impuesto;

  //proceso
  print("porfavor escriba el precio de el producto");
  precio = double.parse(stdin.readLineSync()!);

  impuesto = precio * 0.19;
  total = impuesto + precio;

  print("el total a pagar de su pedido es: $total, se le aplico un IVA de el 19% el cual equivale a $impuesto");  
}