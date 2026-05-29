/* 2. Dado el monto de una compra calcular el descuento considerado
• Descuento es 20% si el monto es mayor a 20000 pesos.
• Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
• no hay descuento si el monto es menor o igual a 10000 pesos. */

import 'dart:io';

void main(List<String> args) {
  double descuento;
  double monto;
  double total;

  print("porfavor escriba cual fue el monto de su compra");
  monto = double.parse(stdin.readLineSync()!);

  if (monto > 20000) {
    descuento = monto * 0.20;
    total = monto - descuento;

    print("el total a pagar de su pedido con un 20% de descuento es: $total");
  } else {
    if (monto > 10000 && monto <= 20000) {
      descuento = monto * 0.10;
      total = monto - descuento;
      print("el monto de su compra con un 10% de descuento es: $total");
    } else {
      if (monto <= 10000) {
        total = monto;
        print("el total de su compra es: $total");
      }
    }
  }
}
