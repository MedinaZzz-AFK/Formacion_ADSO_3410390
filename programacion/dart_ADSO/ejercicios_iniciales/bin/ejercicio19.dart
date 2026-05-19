//Un trabajador cobra $20.000 por hora. Si trabaja más de 48 horas, las horas
//adicionales se pagan como "Horas Extra" con un recargo de $5.000 sobre el valor
//normal. Calcular su salario total.
//jeronimo medina

import 'dart:io';

void main(List<String> args) {
  double hora;
  double horaex;
  double salariotot;
  double valorh = 20000;
  double valorhe = 5000;

  print("porfavor digite el numero de horas trabajadas");
  hora = double.parse(stdin.readLineSync()!);

  

  if (hora > 48){
    horaex = hora - 48;
    salariotot = (valorh*48) + (horaex*valorhe);

    print("su salario total es de: $salariotot");
  }else {
    salariotot= 48 * valorh;
    print("su salario total es de: $salariotot");

  }

}