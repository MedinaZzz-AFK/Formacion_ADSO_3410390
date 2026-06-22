//Un gimnasio ofrece un descuento del 20% si el cliente paga la anualidad
//completa (monto > 500.000), de lo contrario el descuento es del 5%. Calcular el
//total a pagar.
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  //definicion
  double descuento;
  double total;
  double pago;
  //proceso

  print("porfavor ingrese cuanto pagara por la anualidad en el gym");
  pago = double.parse(stdin.readLineSync()!);

  if (pago > 500000) {
    descuento = pago * 0.20;
    total = pago - descuento;
    print("el total de su anualidad en el GYM con un 20% es: $total");
  } else {
    descuento = pago * 0.05;
    total = pago - descuento;

    print(
      "el total a pagar de su anualidad en el GYM con un 5% de descuento es: $total",
    );
  }
}
