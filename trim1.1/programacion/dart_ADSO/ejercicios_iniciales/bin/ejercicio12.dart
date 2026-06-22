// 12. Pedir un número al usuario y determinar si es divisible por 5.
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  //definicion
  double numero;
  
//proceso
  print("porfavor ingrese el numero que quiere saber si es divisible por 5");
  numero = double.parse(stdin.readLineSync()!);

  if (numero %5 == 0){
    print("el numero $numero es divisible por 5");

    }else {
      print("el numero no es divisible por 5");
    }
  }
