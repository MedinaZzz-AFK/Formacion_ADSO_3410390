/* 1. Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado
de Algoritmos. */

import 'dart:io';

void main(List<String> args) {
  double sumaNotas = 0.0, promedio;
  int numeroNotas = 7;

  for (var i = 1; i <= 7; i++) {
    double calificacion;
    print("porfavor ingrese la calificacion numero $i del estudiante");
    calificacion = double.parse(stdin.readLineSync()!);

    sumaNotas = sumaNotas + calificacion;
  }

  promedio = sumaNotas / numeroNotas;
  print("el promedio de las 7 calificaciones del estudiante es: $promedio");
}
