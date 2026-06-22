//pedir edad de la persona y segun el dia de la semana decir si hace aseo o no

import 'dart:io';

void main(List<String> args) {
  int edad;
  String? diaSemana;
  print ("ingrese la edad de la persona");
  edad = int.parse(stdin.readLineSync()!);
  print ("ingrese el dia de la semana");
  diaSemana = stdin.readLineSync();

  //condicional simple
  if (diaSemana == "lunes"){
    print( "todos hacen el aseo");

  }
  //condicional doble
  if (edad >= 18){
    print("usted es mayor de edad");

  }else{
    print("usted es menor de edad");
  }
}