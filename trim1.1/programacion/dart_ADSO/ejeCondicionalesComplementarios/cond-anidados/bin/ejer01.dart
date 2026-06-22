/* 1. El sistema de seguridad Industri-ID realiza una doble validación para permitir el
ingreso al complejo del SENA. Primero, solicita el estado de la tarjeta RFID del
usuario (ingrese 1 para Activa, 0 para Inactiva). Si la tarjeta está activa, el sistema
hace una segunda pregunta internamente para evaluar el rol ("instructor" o
"aprendiz"). Si es instructor, tiene "Acceso total a todos los bloques". Si es aprendiz,
tiene "Acceso limitado a los ambientes de formación". Si la tarjeta RFID está inactiva
desde el principio, el sistema omite el rol y simplemente muestra "Acceso Denegado:
Tarjeta bloqueada" */

import 'dart:io';



void main(List<String> args) {
  int estadoTg;
  String rol;

  print("ingrese el estado de la targeta ( 1. activa - 0. inactiva)");
  estadoTg = int.parse(stdin.readLineSync()!);
  print("ingrese su rol (aprendiz, instructor, administrativo)");
  rol = stdin.readLineSync()!.trim().toLowerCase();

  if(estadoTg == 1){
    if(rol == "instructor"){
      print("acceso total a todos los bloques");
    }else if(rol=="aprendiz"){
      print("acceso limitado a los ambientes de formacion");
    }else if (rol == "administrativo"){
      print("acceso a los bloques administrativos");
    }else{
      print("su rol no existe dentro del sistema");
    }
  
  }else{
    print("acceso denegado: targeta bloqueada");
  }
}