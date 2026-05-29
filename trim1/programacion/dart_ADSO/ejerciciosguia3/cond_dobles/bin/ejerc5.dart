/* 5. Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de
descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad
pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un
programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como
para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el
usuario ingresa 2. */

import 'dart:io';

void main(List<String> args) {
  double cantidad;
  double descuento1;
  double descuento2;
  double cantidad2;
  double precio1;
  double precio2;
  double opcion;
  double subtotal;
  double total1;
  double total2;
  double totalPago;
  double subtotal2;

  print("porfavor ingrese la cantidad de brochas de cerda compro: ");
  cantidad = double.parse(stdin.readLineSync()!);
  print("porfavor ingrese el precio unitario de brochas de cerda");
  precio1 = double.parse(stdin.readLineSync()!);

  print("porfavor ingrese la cantidad de rodillos que compro: ");
  cantidad2 = double.parse(stdin.readLineSync()!);
  print("porfavor ingrese el precio por unidad de cada rodillo");
  precio2 = double.parse(stdin.readLineSync()!);

  print(
    "porfavor elija por cual medio de pago desea pagar: 1. (contado), 2. (credito)",
  );
  opcion = double.parse(stdin.readLineSync()!);

  subtotal = cantidad * precio1;
  subtotal2 = cantidad2 * precio2;

  descuento1 = subtotal * 0.20;
  descuento2 = subtotal2 * 0.15;

  total1 = subtotal - descuento1;
  total2 = subtotal2 - descuento2;

  if (opcion == 1) {
    descuento1 = (total1 + total2) * 0.07;
    totalPago = (total1 + total2) - descuento1;
    print(
      "el total a pagar de su pedido con un 20% en brochas de cerdas y un 15% en rodillos y un 7% de descuento que se le obsequia por haber pagado de contado seria= $totalPago ",
    );
  } else {
    totalPago = total1 + total2;
    print(
      "el total a pagar de su pedido con un 20% en brochas de cerdas y un 15% en rodillos es: $totalPago",
    );
  }
}
