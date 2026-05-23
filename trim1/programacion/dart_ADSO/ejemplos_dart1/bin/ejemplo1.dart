//solicitar precio y cantidad de un producto y mostrar el total a pagar con un 15%
import 'dart:io';

void main(List<String> args) {
  double precio, descuento, totalPagar;
  int cantidad;
  //entrada
  stdout.writeln("ingrese el precio del producto");
  precio = double.parse(stdin.readLineSync()!);
  stdout.writeln("ingrese la cantidad de productos comprados");
  cantidad = int.parse(stdin.readLineSync()!);
  totalPagar = precio * cantidad;
  descuento = totalPagar * 0.15;
  totalPagar = totalPagar - descuento;
  //salida
  stdout.writeln("el total a pagar es: $totalPagar, con un 15% de descuento");
}