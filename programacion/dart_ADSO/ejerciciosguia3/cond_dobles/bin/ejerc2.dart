/* 2. Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
• Si trabaja 40 horas o menos se le paga $16 por hora
• Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
extra. */

import 'dart:io';

void main(List<String> args) {
  double salariototal;
  double hora;

  print("porfavor digite cuantas horas trabajo");
  hora = double.parse(stdin.readLineSync()!);

  if (hora <= 40) {
    salariototal = hora * 16;
    print(
      "el total de su salario de acuerdo a sus horas trabajadas que son $hora horas es: $salariototal",
    );
  } else {
    salariototal = (((hora - 40) * 20) + 640);
    print(
      "el total de su salario de acuerdo a las horas trabajadas que son $hora horas es: $salariototal ",
    );
  }
}
