/* 7. Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar
clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50
000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar
será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente*/

import 'dart:io';

void main(List<String> args) {
  double cuota, fianza, descuento, total;

  print("escriba de cuanto es la fianza que usted paga");
  fianza = double.parse(stdin.readLineSync()!);

  cuota = fianza * 0.03;
  descuento = 3;

  if (fianza > 50000) {
    cuota = fianza * 0.02;
    descuento = 2;
  }

  total = cuota;

  print(
    "el total a pagar de su couta es de: $total correspondiente al $descuento %",
  );
}
