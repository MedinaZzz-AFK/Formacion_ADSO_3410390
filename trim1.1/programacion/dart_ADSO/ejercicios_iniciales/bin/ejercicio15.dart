//15. Hacer un algoritmo que lea la temperatura de un paciente; si es mayor a 38
//grados, mostrar "Tiene fiebre", de lo contrario "Temperatura normal"

import 'dart:io';

void main(List<String> args) {
  //definicion
  double temperatura;
  //proceso

  print("ingrese la temperatura de el paciente");
  temperatura = double.parse(stdin.readLineSync()!);

  if (temperatura >38){
    print("tiene fiebre");
  } else{
    print("temperatura normal");
  }
}