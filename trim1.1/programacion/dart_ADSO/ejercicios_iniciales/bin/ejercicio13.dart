// Leer la edad de una persona y mostrar un mensaje indicando si es mayor de
//edad o menor de edad.
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  //definicion
  int edad;
  
//proceso
  print("porfavor digite su edad");
  edad = int.parse(stdin.readLineSync()!);

  if (edad >= 18){
    print("usted es mayor de edad");
  }else{
    print("usted es menor de edad");
  }
  
  
}