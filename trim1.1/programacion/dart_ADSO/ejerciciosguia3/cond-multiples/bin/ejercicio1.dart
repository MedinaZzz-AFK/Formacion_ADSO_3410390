import 'dart:io';

void main(List<String> arguments) {
  /*La empresa comercializadora Solva vende escobas, recogedores y aromatizantes,  clasifica a sus 
clientes de acuerdo a la frecuencia de compras con las condiciones siguientes: 
Si el cliente es de la categoría 1 se le descuenta el 5% 
Si el cliente es de la categoría 2 se le descuenta el 8% 
Si el cliente de de la categoría 3 se le descuenta el 12% 
Si el cliente es de la categoría 4 se le descuenta el 15% 
Cuando el cliente realiza una compra se generan los siguientes datos: 
Nombre del cliente 
Tipo de cliente 
Cantidad comprada de escobas, recogedores y aromatizantes. 
Los precios de estos elementos son. 
• Escobas. 3000. 
• Recogedores. 2000 
• Aromatizantes. 1000 
Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla: 
Nombre del cliente 
Subtotal a pagar 
Descuento 
Total a pagar.*/

  stdout.writeln("Ejercicio 1 - condicionales multiples");

  //DEFINICION DE VARIABLES
  int categoria, escobas, recogedores, aromatizantes, totalEscobas, totalRecogedores, totalAromatizantes, subtotal;
  String nombre;
  double descuento, total;

  //ENTRADA
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync()!;
  stdout.writeln("Ingrese la categoria a la que usted pertenece: 1, 2, 3, 4");
  categoria = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad de escobas a comprar");
  escobas = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad de recogedores a comprar");
  recogedores = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad de aromatizantes a comprar");
  aromatizantes = int.parse(stdin.readLineSync()!);

  totalEscobas = escobas * 3000;
  totalRecogedores = recogedores * 2000;
  totalAromatizantes = aromatizantes * 1000;

  subtotal = totalEscobas + totalRecogedores + totalAromatizantes;

  //PROCESO
  switch (categoria) {
    case 1:
      descuento = subtotal * 0.05;
      break;
    case 2:
      descuento = subtotal * 0.08;
      break;
    case 3:
      descuento = subtotal * 0.12;
      break;
    case 4:
      descuento = subtotal * 0.15;
      break;
    default:
      descuento = 0;
  }

  total = subtotal - descuento;

  stdout.writeln("Nombre del cliente: $nombre");
  stdout.writeln("Subtotal: \$$subtotal");
  stdout.writeln("Descuento: \$$descuento");
  stdout.writeln("Total a pagar: \$$total");
}
