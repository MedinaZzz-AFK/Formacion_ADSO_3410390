/* 5. Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000
si se compran menos de 5 llantas y de $70000 si se compran 5 o más.*/

import 'dart:io';

void main(List<String> args) {
  double cantidad, precioFinal;

  print(
    "porfavor digite la cantidad de llantas que compro, si su pedido supera la cantidad de 5 llantas le queda a 70k cada una sino a 80k cada una",
  );
  cantidad = double.parse(stdin.readLineSync()!);

  precioFinal = cantidad * 80000;

  if (cantidad >= 5) {
    precioFinal = cantidad * 70000;
  }

  print("el total a pagar de su pedido es: $precioFinal");
}
