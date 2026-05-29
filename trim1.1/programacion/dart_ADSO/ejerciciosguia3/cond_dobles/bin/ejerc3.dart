/* 3. Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se
aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10% */

import 'dart:io';

void main(List<String> args) {
  double cantidad;
  double descuento;
  double total;
  double precio;
  double subtotal;
  
  print("porfavor digite la cantidad de camisas que compro");
  cantidad = double.parse(stdin.readLineSync()!);

  precio = 20000;

  if (cantidad >= 3){
    subtotal = precio * cantidad;
    descuento = subtotal * 0.20;
    total = subtotal - descuento;

    print("el total a pagar de su compra con un 20% es: $total pesos");
  } else {
    subtotal = precio * cantidad;
    descuento = subtotal * 0.10;
    total = subtotal - descuento;
    print("el total a pagar de su compra con un 10% de descuento es: $total pesos");
    
  }
}