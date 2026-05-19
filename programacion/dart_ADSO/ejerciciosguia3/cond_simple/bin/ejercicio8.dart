/* 8. Dada la duración en minutos de una llamada calcular el costo, considerando:
• Hasta tres minutos el costo es 600
• Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros. */

import 'dart:io';

void main(List<String> args) {
  double precioMin, precioTotal, cantidad;

  print("porfavor digite la cantidad de minutos que uso");
  cantidad = double.parse(stdin.readLineSync()!);

  precioMin = 600;
  precioTotal = 600;

  if(cantidad > 3){
    precioTotal = 600+((cantidad-3)*150);

    print("la cantidad a pagar de su uso de minutos es: $precioTotal");
  }

  print("la cantidad a pagar de su uso de minutos es: $precioTotal");

}