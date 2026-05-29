/* 4. En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha
promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de
cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona
tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la
compra*/

import 'dart:io';

void main(List<String> args) {
  double cantidad;
  double precio;
  double total;

  print("ingrese porfavor la cantidad de llantas que compro: ");
  cantidad = double.parse(stdin.readLineSync()!);

  if (cantidad<5 ){
    precio= 90000;
    total = precio * cantidad;

    print("el total a pagar de su compra es: $total y el precio de cada llanta es de $precio ");
  }else{
    if(cantidad >= 5 && cantidad <=10){
    precio = 80000;
    total = precio * cantidad;

    print("el precio a pagar de su compra es: $total y el precio unitario de cada llanta es de $precio");
    }else{
      if(cantidad>10){
      precio= 70000;
      total = precio * cantidad;

      print("el precio a pagar de su compra es: $total y el preciio unitario de cada llanta es: $precio");
      }
    }
  }
}