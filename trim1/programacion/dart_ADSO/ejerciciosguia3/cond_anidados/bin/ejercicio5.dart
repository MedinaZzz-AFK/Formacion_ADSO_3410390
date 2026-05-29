/* 5. Una frutería ofrece las manzanas con descuento según la siguiente tabla:
NUM. DE KILOS COMPRADOS % DESCUENTO
0 - 2 0%
2.01 - 5 10%
5.01 - 10 15%
10.01 en adelante 20%
Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo
vale $1300 */

import 'dart:io';

void main(List<String> args) {
  double kilo;
  double descuento;
  double pKilo = 1300;
  double total;
  double subtotal;

  print("porfavor digite cuantos kilos compro");
  kilo = double.parse(stdin.readLineSync()!);

  if (kilo <= 2 && kilo >= 0) {
    total = pKilo * kilo;

    print("el total a pagar de su compra es: $total");
  } else {
    if (kilo <= 5 && kilo >= 2.01) {
      subtotal = pKilo * kilo;
      descuento = subtotal * 0.10;
      total = subtotal - descuento;

      print("el total a pagar de su compra con un 10% es: $total");
    } else {
      if (kilo <= 10 && kilo >= 5.01) {
        subtotal = pKilo * kilo;
        descuento = subtotal * 0.15;
        total = subtotal - descuento;

        print("el total a pagar de su compra es: $total");
      } else {
        if (kilo >= 10.01) {
          subtotal = pKilo * kilo;
          descuento = subtotal * 0.20;
          total = subtotal - descuento;

          print("el total a pagar de su compra es: $total");
        }
      }
    }
  }
}
