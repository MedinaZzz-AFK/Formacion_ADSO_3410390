/* 3. En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del
número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10%
de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco
pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de
descuento. El precio de cada computadora es de $1100000 */

import 'dart:io';

void main(List<String> args) {
  double descuento;
  double cantidad;
  double precioC;
  double total;

  print("Hola! Porfavor digita la cantidad de computadoras que compraste :)");
  cantidad = double.parse(stdin.readLineSync()!);

  precioC = 1100000 * cantidad;

  if (cantidad < 5) {
    descuento = precioC * 0.10;
    total = precioC - descuento;

    print("el total a pagar de su compra es: $total");
  } else {
    if (cantidad >= 5 && cantidad < 10) {
      descuento = precioC * 0.20;
      total = precioC - descuento;
      print("el total a pagar de su compra es: $total ");
    } else {
      if (cantidad >= 10) {
        descuento = precioC * 0.40;
        total = precioC - descuento;
        print("el total a pagar de su compra es: $total");
      }
    }
  }
}
